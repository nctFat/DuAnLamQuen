<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="DuAnLamQuen.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
<style>
    /* CSS cho nút btnGui */
    .btn1 {
        background-color: #007bff; /* Màu mặc định */
        color: white;
        border: 2px solid #007bff;
        border-radius: 10px; /* Bo tròn 4 góc */
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        transition: background-color 0.3s ease, color 0.3s ease;
    }

    /* CSS cho hiệu ứng hover */
    .btn1:hover {
        background-color: #0069d9; /* Màu khi hover */
        border-color: #0069d9;
    }
</style>
</head>

<body>

    <form id="form1" runat="server">
        <div class="container w-50 mt-5">
            <div class="row">
                <%--Left side--%>

                <div class="col-8 border border-success border-right-0 w-100">
                    <div class="text-center" style="background-color :green;">        
                        <asp:Label CssClass=" h4 text-white font-weight-bold" ID="Label1" runat="server" Text="Thông tin đăng nhập"></asp:Label>
                    </div>
                    <%--Tên đăng nhập--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="lbTenDangNhap" runat="server" Text="Tên đăng nhập:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtTenDangNhap" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <%--Mật khẩu--%>
                    <div class="row mb-2 mt-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label3" runat="server" Text="Mật khẩu:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtMK" type="password" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <%--Nhập lại Mật khẩu--%>
                    <div class="row mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label4" runat="server" Text="Nhập lại mật khẩu:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtRMK" type="password" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="text-center"  style="background-color :green;">        
                        <asp:Label CssClass=" h4 text-white font-weight-bold" ID="Label5" runat="server" Text="Thông tin cá nhân"></asp:Label>
                    </div>
                    <%--Họ tên KH--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label6" runat="server" Text="Họ tên khách hàng:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtHoTen" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <%--Ngày sinh--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label7" runat="server" Text="Ngày sinh:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">                      
                            <asp:DropDownList Width="30%" ID="ddlNgay" runat="server"></asp:DropDownList>/     
                            <asp:DropDownList Width="30%" ID="ddlThang" AutoPostBack="True" OnSelectedIndexChanged="ddlThang_SelectedIndexChanged" runat="server"></asp:DropDownList>/
                            <asp:DropDownList Width="30%" ID="ddlNam" runat="server"></asp:DropDownList>
                        </div>
                    </div>

                    <%--Email--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label8" runat="server" Text="Email:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtEmail" type="email" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <%--Thu nhập--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label9" runat="server" Text="Thu nhập:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtThuNhap" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <%--Giới tính--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label10" runat="server" Text="Giới tính:"></asp:Label>
                        </div>
                        <div class="col-8 text-left mt-1">
                           <asp:CheckBox CssClass="float-left" ID="ckbGT" runat="server" /> Nam 
                        </div>
                    </div>

                    <%--Địa chỉ--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label11" runat="server" Text="Địa chỉ:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtDiaChi" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <%--Điện thoại--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label12" runat="server" Text="Điện thoại:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtDienThoai" runat="server"></asp:TextBox>
                        </div>
                    </div>

                     <div class="row mb-2">
                        <div class="col text-center mt-2">
                            <asp:Button CssClass="btn1" ID="btnGui" runat="server" Text="In đơn đặt hàng" OnClick="btnGui_Click"  />
                        </div>
                    </div>
                </div>

               
                <%--right side--%>
                <div class="col-4 container-fluid border border-success w-100">
                    <div class="text-center">   
                        <div style="background-color :green;"><asp:Label CssClass=" h4 text-white font-weight-bold" ID="lbKetQua" runat="server" Text="Hồ sơ khách hàng"></asp:Label></br></div>
                        
                        
                        <div id="divKetQua" runat="server" class="text-small" style="color:mediumpurple;">
        <!-- Nội dung kết quả sẽ được thêm vào đây -->
                 </div>
                        <div class ="text-left" style="color:red;">
                              <asp:RequiredFieldValidator ID="rfvTenDangNhap" runat="server"
                                ErrorMessage="-Tên đăng nhập không được rỗng" ControlToValidate="txtTenDangNhap"></asp:RequiredFieldValidator></br>
                                <asp:RequiredFieldValidator ID="rfvMatKhau" runat="server"
                                ErrorMessage="-Mật khẩu không được rỗng" ControlToValidate="txtMK"></asp:RequiredFieldValidator></br>
                            <asp:RequiredFieldValidator ID="rfvRMK" runat="server"
                                ErrorMessage="-Mật khẩu nhập lại không được rỗng" ControlToValidate="txtRMK"></asp:RequiredFieldValidator></br>
                            <asp:CompareValidator ID="cvMK" runat="server"
                                ControlToValidate="txtRMK"
                                ControlToCompare="txtMK"
                                Operator="Equal"
                                ErrorMessage="-Mật khẩu nhập lại không khớp. Vui lòng nhập lại!!!">
                            </asp:CompareValidator></br>
                        <asp:RequiredFieldValidator ID="rfvhoTen" runat="server"
                                ErrorMessage="-Họ tên không được rỗng" ControlToValidate="txtHoTen"></asp:RequiredFieldValidator></br>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                            ControlToValidate="txtEmail"
                            ErrorMessage="-Địa chỉ email không được để trống.">
                        </asp:RequiredFieldValidator></br>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server"
                                ControlToValidate="txtEmail"
                                ErrorMessage="-Địa chỉ email không hợp lệ."
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                        </asp:RegularExpressionValidator></br>
                        <asp:RequiredFieldValidator ID="rfvThuNhap" runat="server"
                            ControlToValidate="txtThuNhap"
                            ErrorMessage="-Thu nhập không được để trống.">
                        </asp:RequiredFieldValidator></br>
                        <asp:RangeValidator ID="rvThuNhap" runat="server"
                            ControlToValidate="txtThuNhap"
                            ErrorMessage="-Thu nhập phải từ 1,000,000 đến 50,000,000."
                            Type="Integer"
                            MinimumValue="1000000"
                            MaximumValue="50000000">
                        </asp:RangeValidator></br>
                        <asp:RequiredFieldValidator ID="rfvDiaChi"
                            runat="server" ErrorMessage="-Địa chỉ không được để trống" ControlToValidate="txtDiaChi"></asp:RequiredFieldValidator></br>
                        <asp:RequiredFieldValidator ID="rfvSDT" runat="server"
                            ErrorMessage="-Số điện thoại không được để trống" ControlToValidate="txtDienThoai"></asp:RequiredFieldValidator>
                        </div>
                              
                    </div>
                </div>
            </div>
        </div>
        
    </form>
</body>
</html>
