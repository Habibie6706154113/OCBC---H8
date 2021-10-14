using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LoginRegisterWindows
{
    public partial class Register : Form
    {
        Config db = new Config();
        public Register()
        {
            InitializeComponent();
            db.Connect("userdata");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "")
            {
                MessageBox.Show("you haven't input Name");
            }
            else if (textBox2.Text == "")
            {
                MessageBox.Show("you haven't input Username");
            }
            else if (textBox3.Text == "")
            {
                MessageBox.Show("you haven't input Password");
            }
            else
            {
                db.Execute("INSERT INTO user_info (names, username, password) VALUES ('" + textBox1.Text + "', '" + textBox2.Text + "', '" + textBox3.Text + "')");
                MessageBox.Show("you have registered");
                this.Close();
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
