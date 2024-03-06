<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinhToan.aspx.cs" Inherits="DuAnLamQuen.TinhToan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container border border-primary">
            <div class="h1 text-center bg-success mb-3 p-2 ">Tính toán đơn giản</div>
            <div class="mx-auto text-center " style="width:300px">
                <div class="mb-2">
                    Nhập số 1: <asp:TextBox ID="txtSo1" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSo1" CssClass="text-danger" ErrorMessage="Bạn chưa nhập số thứ nhất !"></asp:RequiredFieldValidator>
                    <br />
                </div>
                <div>
                    Nhập số 2: <asp:TextBox ID="txtSo2" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSo2" CssClass="text-danger" ErrorMessage="Bạn chưa nhập số thứ hai !"></asp:RequiredFieldValidator>
                    <br />
                </div>
                <br />
                <div class="">
                    <asp:Button CssClass="btn btn-primary" ID="btnCong" runat="server" Text="Cộng" OnClick="btnCong_Click" />
                    <asp:Button CssClass="btn btn-danger" ID="btnTru" runat="server" Text="Trừ" OnClick="btnTru_Click" />
                    <asp:Button CssClass="btn btn-warning" ID="btnNhan" runat="server" Text="Nhân" OnClick="btnNhan_Click" />
                    <asp:Button CssClass="btn btn-secondary" ID="btnChia" runat="server" Text="Chia" OnClick="btnChia_Click" /><br />
                </div>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Kết quả" Style="color: red"></asp:Label>
                <asp:TextBox CssClass="mb-3" ID="txtKetQua" runat="server"></asp:TextBox>
                <br />
            </div>
           
            <small class="text-danger"> <asp:Label ID="lblThongBao1" runat="server" Text=""></asp:Label> </small>
            <br />
            <asp:Label ID="lblThongBao2" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
