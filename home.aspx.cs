using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GardenFunfair
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // Fill the list box
                lbRide.Items.Add("FAMILY RIDES");
                lbRide.Items.Add("KIDDIE RIDES");
                lbRide.Items.Add("THRILL RIDES");
                
                
            }

        }

        protected void Btnnext_Click(object sender, EventArgs e)
        {
            lblselected.Text = lbRide.SelectedItem.Text;
        }

        protected void lbRide_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblselected.Text = lbRide.SelectedItem.Text;
        }
    }
}