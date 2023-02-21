using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DiFuTong
{
    public partial class AdminRegister : Form
    {
        public AdminRegister()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (txtID.Text == "" || txtName.Text == "" || txtPwd.Text == "" || txtPwd2.Text == ""||txtAdminID.Text=="")
            {
                label7.Text = "用户名、账号、密码、管理员码不能为空";

            }
            else if (txtPwd.Text != txtPwd2.Text)
            {
                label7.Text = "两次密码输入不一致";
            }
            else if (txtAdminID.Text!="20020114")
            {
                label7.Text = "管理员码无效";
            } 
        }
    }
}
