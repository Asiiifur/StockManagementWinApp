using System.Windows.Forms;

namespace StockManagementWinApp
{
    partial class HomeUpdatedForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(HomeUpdatedForm));
            this.panel1 = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.userNameShowLabel = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.exitButton = new System.Windows.Forms.Button();
            this.searchSalesButton = new System.Windows.Forms.Button();
            this.stockoutButton = new System.Windows.Forms.Button();
            this.searchItemButton = new System.Windows.Forms.Button();
            this.stockInButton = new System.Windows.Forms.Button();
            this.addCompanyButton = new System.Windows.Forms.Button();
            this.addItemButton = new System.Windows.Forms.Button();
            this.addCategoryButton = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.AutoSize = true;
            this.panel1.BackColor = System.Drawing.Color.DarkCyan;
            this.panel1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("panel1.BackgroundImage")));
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.userNameShowLabel);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1380, 153);
            this.panel1.TabIndex = 0;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label2.Location = new System.Drawing.Point(25, 58);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 24);
            this.label2.TabIndex = 5;
            this.label2.Text = "User : ";
            // 
            // userNameShowLabel
            // 
            this.userNameShowLabel.AutoSize = true;
            this.userNameShowLabel.BackColor = System.Drawing.Color.Transparent;
            this.userNameShowLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.userNameShowLabel.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.userNameShowLabel.Location = new System.Drawing.Point(95, 59);
            this.userNameShowLabel.Name = "userNameShowLabel";
            this.userNameShowLabel.Size = new System.Drawing.Size(60, 24);
            this.userNameShowLabel.TabIndex = 4;
            this.userNameShowLabel.Text = "label2";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Segoe UI Semibold", 26.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label1.Location = new System.Drawing.Point(496, 40);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(451, 47);
            this.label1.TabIndex = 3;
            this.label1.Text = "Stock Management System";
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.Transparent;
            this.panel2.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("panel2.BackgroundImage")));
            this.panel2.Controls.Add(this.exitButton);
            this.panel2.Controls.Add(this.searchSalesButton);
            this.panel2.Controls.Add(this.stockoutButton);
            this.panel2.Controls.Add(this.searchItemButton);
            this.panel2.Controls.Add(this.stockInButton);
            this.panel2.Controls.Add(this.addCompanyButton);
            this.panel2.Controls.Add(this.addItemButton);
            this.panel2.Controls.Add(this.addCategoryButton);
            this.panel2.Location = new System.Drawing.Point(-3, 145);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(248, 619);
            this.panel2.TabIndex = 1;
            // 
            // exitButton
            // 
            this.exitButton.BackColor = System.Drawing.Color.Black;
            this.exitButton.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("exitButton.BackgroundImage")));
            this.exitButton.FlatAppearance.BorderColor = System.Drawing.Color.MediumAquamarine;
            this.exitButton.FlatAppearance.BorderSize = 2;
            this.exitButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold);
            this.exitButton.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.exitButton.Location = new System.Drawing.Point(14, 552);
            this.exitButton.Name = "exitButton";
            this.exitButton.Size = new System.Drawing.Size(220, 32);
            this.exitButton.TabIndex = 7;
            this.exitButton.Text = "Logout";
            this.exitButton.UseVisualStyleBackColor = false;
            this.exitButton.Click += new System.EventHandler(this.exitButton_Click);
            // 
            // searchSalesButton
            // 
            this.searchSalesButton.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("searchSalesButton.BackgroundImage")));
            this.searchSalesButton.FlatAppearance.BorderColor = System.Drawing.Color.MediumAquamarine;
            this.searchSalesButton.FlatAppearance.BorderSize = 2;
            this.searchSalesButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold);
            this.searchSalesButton.Location = new System.Drawing.Point(14, 448);
            this.searchSalesButton.Name = "searchSalesButton";
            this.searchSalesButton.Size = new System.Drawing.Size(220, 43);
            this.searchSalesButton.TabIndex = 6;
            this.searchSalesButton.Text = "Search Sales Item";
            this.searchSalesButton.UseVisualStyleBackColor = true;
            this.searchSalesButton.Click += new System.EventHandler(this.searchSalesButton_Click);
            // 
            // stockoutButton
            // 
            this.stockoutButton.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("stockoutButton.BackgroundImage")));
            this.stockoutButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.stockoutButton.FlatAppearance.BorderColor = System.Drawing.Color.MediumAquamarine;
            this.stockoutButton.FlatAppearance.BorderSize = 2;
            this.stockoutButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold);
            this.stockoutButton.Location = new System.Drawing.Point(14, 321);
            this.stockoutButton.Name = "stockoutButton";
            this.stockoutButton.Size = new System.Drawing.Size(220, 40);
            this.stockoutButton.TabIndex = 4;
            this.stockoutButton.Text = "Stock Out";
            this.stockoutButton.UseVisualStyleBackColor = true;
            this.stockoutButton.Click += new System.EventHandler(this.stockoutButton_Click);
            // 
            // searchItemButton
            // 
            this.searchItemButton.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("searchItemButton.BackgroundImage")));
            this.searchItemButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.searchItemButton.FlatAppearance.BorderColor = System.Drawing.Color.MediumAquamarine;
            this.searchItemButton.FlatAppearance.BorderSize = 2;
            this.searchItemButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold);
            this.searchItemButton.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.searchItemButton.Location = new System.Drawing.Point(14, 394);
            this.searchItemButton.Name = "searchItemButton";
            this.searchItemButton.Size = new System.Drawing.Size(220, 43);
            this.searchItemButton.TabIndex = 5;
            this.searchItemButton.Text = "Search Item";
            this.searchItemButton.UseVisualStyleBackColor = true;
            this.searchItemButton.Click += new System.EventHandler(this.searchItemButton_Click);
            // 
            // stockInButton
            // 
            this.stockInButton.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("stockInButton.BackgroundImage")));
            this.stockInButton.FlatAppearance.BorderColor = System.Drawing.Color.MediumAquamarine;
            this.stockInButton.FlatAppearance.BorderSize = 2;
            this.stockInButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold);
            this.stockInButton.Location = new System.Drawing.Point(14, 270);
            this.stockInButton.Name = "stockInButton";
            this.stockInButton.Size = new System.Drawing.Size(220, 42);
            this.stockInButton.TabIndex = 3;
            this.stockInButton.Text = "Stock In";
            this.stockInButton.UseVisualStyleBackColor = true;
            this.stockInButton.Click += new System.EventHandler(this.stockInButton_Click);
            // 
            // addCompanyButton
            // 
            this.addCompanyButton.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("addCompanyButton.BackgroundImage")));
            this.addCompanyButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.addCompanyButton.FlatAppearance.BorderColor = System.Drawing.Color.MediumAquamarine;
            this.addCompanyButton.FlatAppearance.BorderSize = 2;
            this.addCompanyButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.addCompanyButton.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.addCompanyButton.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.addCompanyButton.Location = new System.Drawing.Point(14, 50);
            this.addCompanyButton.Name = "addCompanyButton";
            this.addCompanyButton.Size = new System.Drawing.Size(220, 45);
            this.addCompanyButton.TabIndex = 0;
            this.addCompanyButton.Text = "Add Company";
            this.addCompanyButton.UseVisualStyleBackColor = true;
            this.addCompanyButton.Click += new System.EventHandler(this.addCompanyButton_Click);
            // 
            // addItemButton
            // 
            this.addItemButton.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("addItemButton.BackgroundImage")));
            this.addItemButton.FlatAppearance.BorderColor = System.Drawing.Color.MediumAquamarine;
            this.addItemButton.FlatAppearance.BorderSize = 2;
            this.addItemButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.addItemButton.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.addItemButton.Location = new System.Drawing.Point(14, 161);
            this.addItemButton.Name = "addItemButton";
            this.addItemButton.Size = new System.Drawing.Size(220, 39);
            this.addItemButton.TabIndex = 2;
            this.addItemButton.Text = "Add Item";
            this.addItemButton.UseVisualStyleBackColor = true;
            this.addItemButton.Click += new System.EventHandler(this.addItemButton_Click);
            // 
            // addCategoryButton
            // 
            this.addCategoryButton.BackColor = System.Drawing.SystemColors.Control;
            this.addCategoryButton.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("addCategoryButton.BackgroundImage")));
            this.addCategoryButton.FlatAppearance.BorderColor = System.Drawing.Color.MediumAquamarine;
            this.addCategoryButton.FlatAppearance.BorderSize = 2;
            this.addCategoryButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.addCategoryButton.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.addCategoryButton.Location = new System.Drawing.Point(14, 107);
            this.addCategoryButton.Name = "addCategoryButton";
            this.addCategoryButton.Size = new System.Drawing.Size(220, 42);
            this.addCategoryButton.TabIndex = 1;
            this.addCategoryButton.Text = "Add Category";
            this.addCategoryButton.UseVisualStyleBackColor = true;
            this.addCategoryButton.Click += new System.EventHandler(this.addCategoryButton_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("Microsoft Tai Le", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.SystemColors.ControlDarkDark;
            this.label3.Location = new System.Drawing.Point(718, 697);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(128, 16);
            this.label3.TabIndex = 3;
            this.label3.Text = "© Copyright 2019  A*R";
            // 
            // HomeUpdatedForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.DimGray;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.ClientSize = new System.Drawing.Size(1294, 749);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panel2);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.IsMdiContainer = true;
            this.MaximumSize = new System.Drawing.Size(1310, 798);
            this.MinimumSize = new System.Drawing.Size(1287, 766);
            this.Name = "HomeUpdatedForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Home";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.HomeUpdatedForm_FormClosed);
            this.Load += new System.EventHandler(this.HomeUpdatedForm_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button addCategoryButton;
        private System.Windows.Forms.Button stockInButton;
        private System.Windows.Forms.Button addCompanyButton;
        private System.Windows.Forms.Button addItemButton;
        private System.Windows.Forms.Button stockoutButton;
        private System.Windows.Forms.Button searchSalesButton;
        private System.Windows.Forms.Button searchItemButton;
        private System.Windows.Forms.Button exitButton;
        private System.Windows.Forms.Label label1;
        private Form panel3;
        private Label userNameShowLabel;
        private Label label2;
        private Label label3;
    }
}