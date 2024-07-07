using System;
using System.Data;
using System.Web.UI.WebControls;

namespace GardenFunfair
{
    public partial class individualdetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Add any initialization logic here
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            // Add any logic for handling text changed event
        }

        protected void Selection_Change(object sender, EventArgs e)
        {
            // Specify the data source and field names for the Text 
            // and Value properties of the items (ListItem objects) 
            // in the DropDownList control.
            rideFrequency.DataSource = CreateDataSource();
            rideFrequency.DataTextField = "ColorTextField";

            // Bind the data to the control.
            rideFrequency.DataBind();

            // Set the default selected item, if desired.
            rideFrequency.SelectedIndex = 0;

            // Create a table to store data for the DropDownList control.
            DataTable dt = new DataTable();

            if (rideType.SelectedValue == "Family Rides")
            {
                // Populate the table with sample values for Family Rides.
                dt.Rows.Add(CreateRow("All rides", dt));
                dt.Rows.Add(CreateRow("Five rides", dt));
                dt.Rows.Add(CreateRow("One ride", dt));
            }
            else if (rideType.SelectedValue == "Kiddie Rides")
            {
                dt.Rows.Add(CreateRow("All rides", dt));
                dt.Rows.Add(CreateRow("One ride", dt));
            }
            else if (rideType.SelectedValue == "Thrill Rides")
            {
                dt.Rows.Add(CreateRow("All rides", dt));
                dt.Rows.Add(CreateRow("One ride", dt));
            }

            DataView dv = new DataView(dt);
            // Do something with the DataView if needed
        }

        private DataTable CreateDataSource()
        {
            // Implement logic to create the data source for rideFrequency dropdown
            // You may need to adjust this based on your specific requirements
            DataTable dt = new DataTable();
            // Add necessary columns and rows to dt
            return dt;
        }

        private DataRow CreateRow(string value, DataTable dt)
        {
            // Implement logic to create a DataRow
            // You may need to adjust this based on your specific requirements
            DataRow row = dt.NewRow();
            row["rideFrequency"] = value;
            return row;
        }
    }
}