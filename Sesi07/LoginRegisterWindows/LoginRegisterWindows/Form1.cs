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
    public partial class Form1 : Form
    {
        Config db = new Config();
        public Form1()
        {
            InitializeComponent();
            db.Connect("userdata");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "")
            {
                MessageBox.Show("you haven't input Username");
            } else if (textBox2.Text == "")
            {
                MessageBox.Show("you haven't input Password");
            }
            else
            {
                db.ExecuteSelect("SELECT * FROM user_info where username='" + textBox1.Text + "' and password ='" + textBox2.Text + "'");
                if (db.Count() == 1)
                {
                    MessageBox.Show("Success You will login as" + db.Results(0, "names"));
                }
                else
                {
                    MessageBox.Show("Wrong username and password combination");
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Register register = new Register();
            register.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
