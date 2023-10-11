using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Gym_a_Day_Solution;
using Gym_a_Day_Solution.ServiceReference1;

namespace Gym_a_Day_Solution
{
    public partial class ProductAddition : System.Web.UI.Page
    {
        I_Gym_a_Day_BackendClient client = new I_Gym_a_Day_BackendClient();

        protected void Page_Load(object sender, EventArgs e)
        {

        }




        protected void Submit_Click(object sender, EventArgs e)
        {
            //get the image name from the selected file and create a path ("Images/imageName")
            string imgName = productImgFile.PostedFile.FileName;
            //string imgPath = Server.MapPath("./Images/") + imgName;

            //save the file in the Images folder
            productImgFile.PostedFile.SaveAs(Request.PhysicalApplicationPath + "/Images/" + imgName);

            string imgPath = "/Images/" + imgName;

            //Add the product to the db
            bool hasBeenAdded = client.AddProduct(imgPath, productName.Value, productPrice.Value, productDescription.Value, Convert.ToInt32(productQty.Value), SelectCategoryDropDownList.SelectedValue);

            if (hasBeenAdded == true)
            {
                //Success
                Msg.Text = string.Format(productName.Value + " Product added Successfully");
            }
            else 
            {
                //Error
                Msg.Text = string.Format("An error occured while trying to add the product");
            }
        }
    }
}