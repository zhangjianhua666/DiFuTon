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
    public partial class UserRegister : Form
    {
        public UserRegister()
        {
            InitializeComponent();
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (txtID.Text == ""|| txtName.Text==""||txtPwd.Text==""||txtPwd2.Text=="")
            {
                 label6.Text = "用户名、账号、密码不能为空";
                
            }
            else if (txtPwd.Text != txtPwd2.Text)
            {
                label6.Text = "两次密码输入不一致";
            }

        }
    }
}
