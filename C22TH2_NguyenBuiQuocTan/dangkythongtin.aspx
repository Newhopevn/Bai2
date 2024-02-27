<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangkythongtin.aspx.cs" Inherits="C22TH2_NguyenBuiQuocTan.dangkythongtin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="w-50 m-auto">
            <h2 class="text-center">THÔNG TIN CÁ NHÂN</h2>
            <hr />

            <div class="row mb-2">
                <div class="col-2">
                    Họ tên
                </div>
                <div class="col-8">
                    <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-2">
                    Ngày sinh
                </div>
                <div class="col-8">
                    <asp:TextBox ID="txtNgaySinh" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-2">
                    Giới tính
                </div>
                <div class="col-8">
                    <asp:RadioButton ID="rdNam" Text="Nam" runat="server" GroupName="GT" />
                    <asp:RadioButton ID="rdNu" Text="Nữ" runat="server" GroupName="GT" />
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-2">
                    Trình độ
                </div>
                <div class="col-8">
                    <asp:DropDownList ID="ddlTrinhDo" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>
             <div class="row mb-2">
                <div class="col-2">
                    Nghề nghiệp
                </div>
                <div class="col-8">
                    <asp:ListBox ID="lstNgheNghiep" runat="server" CssClass="form-control"></asp:ListBox>
                </div>
            </div>
             <div class="row mb-2">
                <div class="col-2">
                   Hình
                </div>
                <div class="col-8">
                    <asp:FileUpload ID="FHinh" runat="server"  CssClass="form-control" />
                </div>
            </div>
             <div class="row mb-2">
                <div class="col-2">
                   Sở thích
                </div>
                <div class="col-8">
                    <asp:CheckBoxList ID="chkListSoThich" runat="server"></asp:CheckBoxList>
                </div>
            </div>

             <div class="row mb-2">
                 <div class="col-2">
                 </div>
                <div class="col-8">
                    <asp:Button ID="btGui" runat="server" CssClass="btn btn-primary mr-4" Text="Gửi" OnClick="btGui_Click" />
                    <asp:Button ID="btLamLai" runat="server" CssClass="btn btn-info" Text="Làm lại" />
                </div>
                 <div class="row">
                    <div class="col-md-12">
                        <asp:Literal ID="lbKetQua" runat="server"></asp:Literal>
                    </div>
                </div>
                 
            </div>
        </div>
    </form>
</body>
</html>
