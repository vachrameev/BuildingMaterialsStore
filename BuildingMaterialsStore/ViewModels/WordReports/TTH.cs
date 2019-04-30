﻿using BuildingMaterialsStore.Models;
using System;
using System.Data;
using System.Data.SqlClient;
using Word = Microsoft.Office.Interop.Word;
namespace BuildingMaterialsStore.ViewModels.WordReports
{
    class TTH
    {
        private static void ReplaceWordStub(string stubToReplace, string text, Word._Document wordDocument)
        {
            var range = wordDocument.Content;
            range.Find.ClearFormatting();
            range.Find.Execute(FindText: stubToReplace, ReplaceWith: text);
        }
        static public void writeClass(string nameFile, string sql)
        {
            Word._Application wordApplication = new Word.Application();
            Word._Document wordDocument = null;
            var templatePathObj = Environment.CurrentDirectory + "\\" + nameFile + ".docx";
            try
            {
                wordDocument = wordApplication.Documents.Add(templatePathObj);
            }
            catch
            {
                if (wordDocument != null)
                {
                    wordDocument.Close(false);
                    wordDocument = null;
                }
                wordApplication.Quit();
                wordApplication = null;
                throw;
            }
            wordApplication.Visible = false;
            //try
            //{
            //    ReplaceWordStub("{YNH}", "d", wordDocument);
            //    wordDocument.SaveAs("Buf" + templatePathObj);
            //    wordApplication.Visible = true;
            //}
            //catch { }

            wordApplication.Selection.Find.Execute("{Table}");
            Word.Range wordRange = wordApplication.Selection.Range;

            SqlConnection con;
            SqlCommand cmd;
            SqlDataAdapter adapter;
            DataSet ds;
            //try
            //{
            con = new SqlConnection(AuthorizationSettings.connectionString);
            con.Open();
            cmd = new SqlCommand(sql, con);
            adapter = new SqlDataAdapter(cmd);
            ds = new DataSet();
            adapter.Fill(ds, "Storedb");

            //}
            //catch (Exception ex)
            //{
            //    MessageBox.Show(ex.Message);
            //}
            //finally
            //{
            //}
            int rows = ds.Tables[0].Rows.Count + 2 + 1;
            int columns = 9;
            var wordTable = wordDocument.Tables.Add(wordRange,
                rows, columns);

            wordTable.Borders.InsideLineStyle = Microsoft.Office.Interop.Word.WdLineStyle.wdLineStyleSingle;
            wordTable.Borders.OutsideLineStyle = Microsoft.Office.Interop.Word.WdLineStyle.wdLineStyleDouble;


            wordTable.Cell(1, 1).Range.Text = "Наименование товара";
            wordTable.Cell(1, 2).Range.Text = "Единица измерения";
            wordTable.Cell(1, 3).Range.Text = "Количество";
            wordTable.Cell(1, 4).Range.Text = "Цена";
            wordTable.Cell(1, 5).Range.Text = "Стоимость";
            wordTable.Cell(1, 6).Range.Text = "Ставка НДС, %";
            wordTable.Cell(1, 7).Range.Text = "Сумма НДС, руб. коп.";
            wordTable.Cell(1, 8).Range.Text = "Стоимость с НДС";
            wordTable.Cell(1, 9).Range.Text = "Примечание";

            wordTable.Cell(2, 1).Range.Text = "1";
            wordTable.Cell(2, 2).Range.Text = "2";
            wordTable.Cell(2, 3).Range.Text = "3";
            wordTable.Cell(2, 4).Range.Text = "4";
            wordTable.Cell(2, 5).Range.Text = "5";
            wordTable.Cell(2, 6).Range.Text = "6";
            wordTable.Cell(2, 7).Range.Text = "7";
            wordTable.Cell(2, 8).Range.Text = "8";
            wordTable.Cell(2, 9).Range.Text = "9";

            double Price = 0;

            for (int i = 3; i < rows; i++)
            {
                wordTable.Cell(i, 1).Range.Text = ds.Tables[0].Rows[i - 3][0].ToString();
                wordTable.Cell(i, 2).Range.Text = ds.Tables[0].Rows[i - 3][1].ToString();
                wordTable.Cell(i, 3).Range.Text = ds.Tables[0].Rows[i - 3][2].ToString();
                wordTable.Cell(i, 4).Range.Text = (Convert.ToDouble(ds.Tables[0].Rows[i - 3][3])- (Convert.ToDouble(ds.Tables[0].Rows[i - 3][3]) * 20 / 100)).ToString();
                wordTable.Cell(i, 5).Range.Text = ds.Tables[0].Rows[i - 3][4].ToString();
                wordTable.Cell(i, 6).Range.Text = "20%";
                wordTable.Cell(i, 7).Range.Text = (Convert.ToDouble(ds.Tables[0].Rows[i - 3][3]) * 20 / 100).ToString();
                wordTable.Cell(i, 8).Range.Text = ds.Tables[0].Rows[i - 3][3].ToString();

                Price += Convert.ToDouble(ds.Tables[0].Rows[i - 3][3]);
                
            }
            wordTable.Cell(rows, 1).Range.Text = "ИТОГО";
            wordTable.Cell(rows, 2).Range.Text = "шт";
            wordTable.Cell(rows, 4).Range.Text = Price.ToString();
            wordTable.Cell(rows, 6).Range.Text = "20%";


            int id = Convert.ToInt32(ds.Tables[0].Rows[0][5]);
            DateTime day = Convert.ToDateTime(ds.Tables[0].Rows[0][6]);
            adapter.Dispose();
            con.Close();
            con.Dispose();

            sql = "select FirmName, UNP, FirmLegalAddress, FirmAccountNumber,FirmBankDetails, FirmPhoneNumber from Firms where FirmID="+id.ToString();
            con = new SqlConnection(AuthorizationSettings.connectionString);
            con.Open();
            cmd = new SqlCommand(sql, con);
            adapter = new SqlDataAdapter(cmd);
            ds = new DataSet();
            adapter.Fill(ds, "Storedb");


            try
            {
                СуммаПрописью.Валюта.Рубли.Пропись(Price * 20 / 100);

                ReplaceWordStub("{YNH}", ds.Tables[0].Rows[0][1].ToString(), wordDocument);
                ReplaceWordStub("{DD}", day.ToString("d").Split('.')[0], wordDocument);
                ReplaceWordStub("{MM}", day.ToString("d").Split('.')[1], wordDocument);
                ReplaceWordStub("{YY}", day.ToString("d").Split('.')[2], wordDocument);
                ReplaceWordStub("{adress}", ds.Tables[0].Rows[0][0].ToString()+ ds.Tables[0].Rows[0][2].ToString(), wordDocument);
                ReplaceWordStub("{SumHdsP}", СуммаПрописью.Валюта.Рубли.Пропись((Price * 20 / 100)), wordDocument);
             //  ReplaceWordStub("{SumHdsC}", СуммаПрописью.Валюта.Рубли.Пропись(Price * 20 / 100).Split(' ')[1], wordDocument);
                ReplaceWordStub("{TotalSumP}", СуммаПрописью.Валюта.Рубли.Пропись(Price), wordDocument);
              //  ReplaceWordStub("{TotalSumC}", СуммаПрописью.Валюта.Рубли.Пропись(Price), wordDocument);
            }
            catch { }

            wordApplication.Visible = true;



        }

    }
}