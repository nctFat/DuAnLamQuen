<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="DuAnLamQuen.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form class="text-center" id="form1" runat="server">
        <div class="container text-center w-50 mt-3 border border-success rounded-lg  ">
            <div class="bg-light">
                <asp:Label CssClass="h1 text-success " ID="lbHeader" runat="server" Text="ĐƠN ĐẶT HÀNG"></asp:Label>
            </div>
            <div class="row mb-2">
                <div class="col-2 text-right mt-2">
                    <asp:Label ID="lbHoTen" runat="server" Text="Khách hàng:"></asp:Label>
                </div>
                <div class="col-8 text-right">
                    <asp:TextBox Width="100%" ID="txtHoTen" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTen" CssClass="text-danger" ErrorMessage="Chưa nhập tên khách hàng!"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-2 text-right mt-2">
                    <asp:Label ID="lbDiaChi" runat="server" Text="Địa chỉ:"></asp:Label>
                </div>
                <div class="col-8 text-right">
                    <asp:TextBox Width="100%" ID="txtDiaChi" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDiaChi" CssClass="text-danger" ErrorMessage="Chưa nhập địa chỉ !"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-2 text-right mt-2">
                    <asp:Label ID="lbMSThue" runat="server" Text="Mã số thuế:"></asp:Label>
                </div>
                <div class="col-8 text-right">
                    <asp:TextBox Width="100%" ID="txtMSThue" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMSThue" CssClass="text-danger" ErrorMessage="Bạn chưa nhập mã số thuế !"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-6 text-center mt-2 border border-left-0 border-success">
                    <asp:Label ID="Label1" CssClass="h3 text-success" runat="server" Text="Chọn các loại bánh sau"></asp:Label>
                    <br />
                    <br />
                    <asp:DropDownList Width="100%" ID="ddlBanh" runat="server" OnSelectedIndexChanged="ddlBanh_SelectedIndexChanged"></asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="lbSoLuong" runat="server" Text="Số lượng:"></asp:Label>
                    <asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox>
                    <asp:Label ID="Label2" CssClass="w-50" runat="server" Text="cái"></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSoLuong" CssClass="text-danger" ErrorMessage="Bạn chưa nhập số lượng !"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button CssClass="btn btn-success" ID="btChuyen" runat="server" Text=">" OnClick="btChuyen_Click" />
                </div>
                <div class="col-6 text-center mt-2 border-top border-bottom border-success">
                    <asp:Label ID="Label3" CssClass="h3 text-success" runat="server" Text="Danh sách bánh được đặt"></asp:Label>
                    <br />
                    <br />
                    <asp:ListBox CssClass="w-100" ID="listBanh" runat="server" SelectionMode="Multiple"></asp:ListBox>
                    <i class="bi bi-trash"></i>
                    <asp:Button ID="Button1" runat="server" Text="Xoá" OnClick="Button1_Click" />
                </div>
            </div>
            <div class="row mb-2">
                <div class="col text-center mt-2">
                    <asp:Button CssClass="btn btn-success" ID="Button2" runat="server" Text="In đơn đặt hàng" OnClick="Button2_Click" />
                </div>
            </div>
        </div>
    </form>
    <div style="width:30%" class="container mt-3 text-danger">
        <asp:Label CssClass="" ID="lbDonDatHang" runat="server" Text=""></asp:Label>
    </div>
</body>
</html>
