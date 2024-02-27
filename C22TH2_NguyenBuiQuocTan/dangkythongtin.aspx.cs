using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C22TH2_NguyenBuiQuocTan
{
    public partial class dangkythongtin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlTrinhDo.Items.Add(new ListItem("Trung Cấp"));
                ddlTrinhDo.Items.Add(new ListItem("Cao Đẳng"));
                ddlTrinhDo.Items.Add(new ListItem("Đại học"));

                lstNgheNghiep.Items.Add(new ListItem("học sinh"));
                lstNgheNghiep.Items.Add(new ListItem("học ngu"));
                lstNgheNghiep.Items.Add(new ListItem("Sinh Viên"));

                chkListSoThich.Items.Add(new ListItem("Chơi Đồ"));
                chkListSoThich.Items.Add(new ListItem("Chơi Đá"));
                chkListSoThich.Items.Add(new ListItem("Chơi Đồ hàng"));
            }
        }

        protected void btGui_Click(object sender, EventArgs e)
        {
            string kq = "";
            kq += "<h2>Thông tin đăng ký của bạn</h2>";
            kq += "<ul>";
            //Lấy thông tin
            kq += $"<li>Họ Tên {txtHoTen.Text}</li>";

            kq += $"<li>Ngày Sinh {txtNgaySinh.Text}</li>";

            if (rdNam.Checked)
            {
                kq += $"<li>Giới Tính {rdNam.Text}</li>";
            }
            else
            {
                kq += $"<li>Giới Tính {rdNu.Text}</li>";
            }

            kq += $"<li>Trình Độ {ddlTrinhDo.SelectedItem.Text}</li>";

            kq += $"<li>Nghề Nghiệp {lstNgheNghiep.SelectedItem.Text}</li>";

            if (FHinh.HasFile)
            {
                string path = Server.MapPath("~/Uploads");
                FHinh.SaveAs(path + "/" + FHinh.FileName);
                kq += $"<li>Hình: <img src='Uploads/{FHinh.FileName}'> <li>";
            }

            kq += $"<li>Sở Thích: {chkListSoThich.SelectedItem.Text}</li>";

            kq += "</ul>";

            lbKetQua.Text = kq;
        }
        }
}