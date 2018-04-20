<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Data.aspx.vb" Inherits="Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Smart Plug Data</title>
	<meta charset="UTF-8">

    <style type="text/css">
   .inlineBlock { display: inline-block; }
   </style>

    	

    <style type="text/css">
        @font-face {
            font-family: Material-Design-Iconic-Font;
            src: url(Material-Design-Iconic-Font.woff2?v=2.2.0) format('woff2')
        }

        .zmdi {
            display: inline-block;
            font: normal normal normal 14px/1 'Material-Design-Iconic-Font';
            font-size: inherit;
            text-rendering: auto;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale
        }

        /*//////////////////////////////////////////////////////////////////
[ FONT ]*/

        @font-face {
            font-family: Poppins-Regular;
            src: url('fonts/Poppins-Regular.ttf');
        }

        @font-face {
            font-family: Poppins-Medium;
            src: url('fonts/Poppins-Medium.ttf');
        }

        @font-face {
            font-family: Poppins-Bold;
            src: url('.fonts/Poppins-Bold.ttf');
        }

        @font-face {
            font-family: Poppins-SemiBold;
            src: url('fonts/Poppins-SemiBold.ttf');
        }




        /*//////////////////////////////////////////////////////////////////
[ RESTYLE TAG ]*/

        * {
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
            font-family: Poppins-Regular, sans-serif;
        }

        /*---------------------------------------------*/
        a {
            font-family: Poppins-Regular;
            font-size: 14px;
            line-height: 1.7;
            color: #666666;
            margin: 0px;
            transition: all 0.4s;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            -moz-transition: all 0.4s;
        }

            a:focus {
                outline: none !important;
            }

            a:hover {
                text-decoration: none;
                color: #fff;
            }

        /*---------------------------------------------*/
        h1, h2, h3, h4, h5, h6 {
            margin: 0px;
        }

        p {
            font-family: Poppins-Regular;
            font-size: 14px;
            line-height: 1.7;
            color: #666666;
            margin: 0px;
        }

        ul, li {
            margin: 0px;
            list-style-type: none;
        }


        /*---------------------------------------------*/
        input {
            outline: none;
            border: none;
        }

        textarea {
            outline: none;
            border: none;
        }

            textarea:focus, input:focus {
                border-color: transparent !important;
            }

                input:focus::-webkit-input-placeholder {
                    color: transparent;
                }

                input:focus:-moz-placeholder {
                    color: transparent;
                }

                input:focus::-moz-placeholder {
                    color: transparent;
                }

                input:focus:-ms-input-placeholder {
                    color: transparent;
                }

                textarea:focus::-webkit-input-placeholder {
                    color: transparent;
                }

                textarea:focus:-moz-placeholder {
                    color: transparent;
                }

                textarea:focus::-moz-placeholder {
                    color: transparent;
                }

                textarea:focus:-ms-input-placeholder {
                    color: transparent;
                }

        input::-webkit-input-placeholder {
            color: #fff;
        }

        input:-moz-placeholder {
            color: #fff;
        }

        input::-moz-placeholder {
            color: #fff;
        }

        input:-ms-input-placeholder {
            color: #fff;
        }

        textarea::-webkit-input-placeholder {
            color: #fff;
        }

        textarea:-moz-placeholder {
            color: #fff;
        }

        textarea::-moz-placeholder {
            color: #fff;
        }

        textarea:-ms-input-placeholder {
            color: #fff;
        }

        label {
            margin: 0;
            display: block;
        }

        /*---------------------------------------------*/
        button {
            outline: none !important;
            border: none;
            background: transparent;
        }

            button:hover {
                cursor: pointer;
            }

        iframe {
            border: none !important;
        }


        /*//////////////////////////////////////////////////////////////////
[ Utility ]*/
        .txt1 {
            font-family: Poppins-Regular;
            font-size: 13px;
            color: #e5e5e5;
            line-height: 1.5;
        }


        /*//////////////////////////////////////////////////////////////////
[ login ]*/

        .limiter {
            width: 100%;
            margin: 0 auto;
        }

        .container-login100 {
            width: 100%;
            min-height: 100vh;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            padding: 15px;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            position: relative;
            z-index: 1;
        }

            .container-login100::before {
                content: "";
                display: block;
                position: absolute;
                z-index: -1;
                width: 100%;
                height: 100%;
                top: 0;
                left: 0;
                background-color: rgba(255,255,255,0.9);
            }

        .wrap-login100 {
            width: 1200px;
            border-radius: 10px;
            overflow: hidden;
            padding: 55px 55px 37px 55px;
            background: #9152f8;
            background: -webkit-linear-gradient(top, #000080, #000080);
            background: -o-linear-gradient(top, #000080, #000080);
            background: -moz-linear-gradient(top, #000080, #000080);
            background: linear-gradient(top, #000080, #000080);
        }


        /*------------------------------------------------------------------
[ Form ]*/

        .login100-form {
            width: 100%;
        }

        .login100-form-logo {
            font-size: 60px;
            color: #333333;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 120px;
            height: 120px;
            border-radius: 50%;
            background-color: #fff;
            margin: 0 auto;
        }

        .login100-form-title {
            font-family: Poppins-Medium;
            font-size: 30px;
            color: #fff;
            line-height: 1.2;
            text-align: center;
            text-transform: uppercase;
            display: block;
        }


        /*------------------------------------------------------------------
[ Input ]*/

        .wrap-input100 {
            width: 100%;
            position: relative;
            border-bottom: 2px solid rgba(255,255,255,0.24);
            margin-bottom: 30px;
        }

        .input100 {
            font-family: Poppins-Regular;
            font-size: 16px;
            color: #fff;
            line-height: 1.2;
            display: block;
            width: 100%;
            height: 45px;
            background: transparent;
            padding: 0 5px 0 38px;
        }

        /*---------------------------------------------*/
        .focus-input100 {
            position: absolute;
            display: block;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            pointer-events: none;
        }

            .focus-input100::before {
                content: "";
                display: block;
                position: absolute;
                bottom: -2px;
                left: 0;
                width: 0;
                height: 2px;
                -webkit-transition: all 0.4s;
                -o-transition: all 0.4s;
                -moz-transition: all 0.4s;
                transition: all 0.4s;
                background: #fff;
            }

            .focus-input100::after {
                font-family: Material-Design-Iconic-Font;
                font-size: 22px;
                color: #fff;
                content: attr(data-placeholder);
                display: block;
                width: 100%;
                position: absolute;
                top: 6px;
                left: 0px;
                padding-left: 5px;
                -webkit-transition: all 0.4s;
                -o-transition: all 0.4s;
                -moz-transition: all 0.4s;
                transition: all 0.4s;
            }

        .input100:focus {
            padding-left: 5px;
        }

            .input100:focus + .focus-input100::after {
                top: -22px;
                font-size: 18px;
            }

            .input100:focus + .focus-input100::before {
                width: 100%;
            }

        .has-val.input100 + .focus-input100::after {
            top: -22px;
            font-size: 18px;
        }

        .has-val.input100 + .focus-input100::before {
            width: 100%;
        }

        .has-val.input100 {
            padding-left: 5px;
        }


        /*==================================================================
[ Restyle Checkbox ]*/

        .contact100-form-checkbox {
            padding-left: 5px;
            padding-top: 5px;
            padding-bottom: 35px;
        }

        .input-checkbox100 {
            display: none;
        }

        .label-checkbox100 {
            font-family: Poppins-Regular;
            font-size: 13px;
            color: #fff;
            line-height: 1.2;
            display: block;
            position: relative;
            padding-left: 26px;
            cursor: pointer;
        }

            .label-checkbox100::before {
                content: "\f26b";
                font-family: Material-Design-Iconic-Font;
                font-size: 13px;
                color: transparent;
                display: -webkit-box;
                display: -webkit-flex;
                display: -moz-box;
                display: -ms-flexbox;
                display: flex;
                justify-content: center;
                align-items: center;
                position: absolute;
                width: 16px;
                height: 16px;
                border-radius: 2px;
                background: #fff;
                left: 0;
                top: 50%;
                -webkit-transform: translateY(-50%);
                -moz-transform: translateY(-50%);
                -ms-transform: translateY(-50%);
                -o-transform: translateY(-50%);
                transform: translateY(-50%);
            }

        .input-checkbox100:checked + .label-checkbox100::before {
            color: #555555;
        }


        .container-login10-form-btn {
            
            
           
            justify-content: center;
        }

        .login10-form-btn {
            font-family: Poppins-Medium;
            font-size: 14px;
            color: #555555;
            line-height: 1;
            
            justify-content: center;
            align-items: center;
            padding: 0 10px;
            min-width: 10px;
            height: 25px;
            border-radius: 15px;
            background: #9152f8;
            background: -webkit-linear-gradient(bottom, #00A4A7, #00A4A7);
            background: -o-linear-gradient(bottom, #00A4A7, #00A4A7);
            background: -moz-linear-gradient(bottom, #00A4A7, #00A4A7);
            background: linear-gradient(bottom, #00A4A7, #00A4A7);
            position: relative;
            z-index: 1;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            -moz-transition: all 0.4s;
            transition: all 0.4s;
            top: 0px;
            left: 1px;
        }

            .login10-form-btn::before {
                content: "";
                display: block;
                position: absolute;
                z-index: -1;
                
                height: 100%;
                border-radius: 25px;
                background-color: #fff;
                top: 0;
                left: 0;
                opacity: 1;
                -webkit-transition: all 0.4s;
                -o-transition: all 0.4s;
                -moz-transition: all 0.4s;
                transition: all 0.4s;
            }

            .login10-form-btn:hover {
                color: #fff;
            }

                .login10-form-btn:hover:before {
                    opacity: 0;
                }

        /*------------------------------------------------------------------
[ Button ]*/
        .container-login100-form-btn {
            width: 100%;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .login100-form-btn {
            font-family: Poppins-Medium;
            font-size: 12px;
            color: #555555;
            line-height: 1;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0 15px;
            min-width: 10px;
            height: 50px;
            border-radius: 25px;
            background: #9152f8;
            background: -webkit-linear-gradient(bottom, #00A4A7, #00A4A7);
            background: -o-linear-gradient(bottom, #00A4A7, #00A4A7);
            background: -moz-linear-gradient(bottom, #00A4A7, #00A4A7);
            background: linear-gradient(bottom, #00A4A7, #00A4A7);
            position: relative;
            z-index: 1;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            -moz-transition: all 0.4s;
            transition: all 0.4s;
        }

            .login100-form-btn::before {
                content: "";
                display: block;
                position: absolute;
                z-index: -1;
                width: 100%;
                height: 100%;
                border-radius: 25px;
                background-color: #fff;
                top: 0;
                left: 0;
                opacity: 1;
                -webkit-transition: all 0.4s;
                -o-transition: all 0.4s;
                -moz-transition: all 0.4s;
                transition: all 0.4s;
            }

            .login100-form-btn:hover {
                color: #fff;
            }

                .login100-form-btn:hover:before {
                    opacity: 0;
                }


        /*------------------------------------------------------------------
[ Responsive ]*/

        @media (max-width: 576px) {
            .wrap-login100 {
                padding: 55px 15px 37px 15px;
            }
        }



        /*------------------------------------------------------------------
[ Alert validate ]*/

        .validate-input {
            position: relative;
        }

        .alert-validate::before {
            content: attr(data-validate);
            position: absolute;
            max-width: 70%;
            background-color: #fff;
            border: 1px solid #c80000;
            border-radius: 2px;
            padding: 4px 25px 4px 10px;
            top: 50%;
            -webkit-transform: translateY(-50%);
            -moz-transform: translateY(-50%);
            -ms-transform: translateY(-50%);
            -o-transform: translateY(-50%);
            transform: translateY(-50%);
            right: 0px;
            pointer-events: none;
            font-family: Poppins-Regular;
            color: #c80000;
            font-size: 13px;
            line-height: 1.4;
            text-align: left;
            visibility: hidden;
            opacity: 0;
            -webkit-transition: opacity 0.4s;
            -o-transition: opacity 0.4s;
            -moz-transition: opacity 0.4s;
            transition: opacity 0.4s;
        }

        .alert-validate::after {
            content: "\f12a";
            font-family: FontAwesome;
            font-size: 16px;
            color: #c80000;
            display: block;
            position: absolute;
            top: 50%;
            -webkit-transform: translateY(-50%);
            -moz-transform: translateY(-50%);
            -ms-transform: translateY(-50%);
            -o-transform: translateY(-50%);
            transform: translateY(-50%);
            right: 5px;
        }

        .alert-validate:hover:before {
            visibility: visible;
            opacity: 1;
        }

        @media (max-width: 992px) {
            .alert-validate::before {
                visibility: visible;
                opacity: 1;
            }
        }
        </style>

    <style type="text/css">
        /* ------------------------------------ */
        .text-center {
            text-align: center;
        }

        .text-left {
            text-align: left;
        }

        .text-right {
            text-align: right;
        }

        .text-middle {
            vertical-align: middle;
        }

        .p-t-90 {
            padding-top: 90px;
        }

        .p-t-27 {
            padding-top: 27px;
        }

        .p-b-34 {
            padding-bottom: 34px;
        }

    </style>
    
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
    
</head>
<body>
    
    <div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100">
                
                <form id="form1" runat="server" class="login100-form validate-form">
                    <span class="login100-form-logo">
                        <img class="login100-form-logo" src="images/Power.png"/>
                    </span>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="login100-form-title p-b-34 p-t-27">Smart Plug Data
                    </span>


       
      <center>
        <asp:Panel ID="Panel1" runat="server" Width="803px" BorderStyle="Inset" BorderWidth="4px">
              <asp:Label class="wrap-input100 validate-input" ID="Label1" runat="server" ForeColor="White" Text="MAC ID:"></asp:Label> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button class="login10-form-btn" ID="Button4" runat="server" Text="Sign out" OnClick="Button4_Click"/>
            <br /> <br />
        <asp:Label class="wrap-input100 validate-input" ID="Label2" runat="server" Text="Choose a parameter:" ForeColor="White"></asp:Label><br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True">Energy</asp:ListItem>
            <asp:ListItem>VRMS</asp:ListItem>
            <asp:ListItem>IRMS</asp:ListItem>
            <asp:ListItem>Frequency</asp:ListItem>
        </asp:DropDownList>  <asp:TextBox ID="TextBox2" runat="server" Width="105px">From</asp:TextBox>
               <asp:TextBox ID="TextBox3" runat="server" Width="98px">To</asp:TextBox>
            &nbsp;&nbsp;
<asp:Button class="login10-form-btn" ID="Button1" runat="server" Text="View Readings"  OnClick="Button1_Click" />
              &nbsp;
&nbsp;<asp:Button class="login10-form-btn" ID="Refresh" runat="server" Text="Refresh" />
        <br /><br />
             <asp:DropDownList ID="DD_Year" runat="server">
                 <asp:ListItem>2018</asp:ListItem>
                 <asp:ListItem>2017</asp:ListItem>
                 <asp:ListItem>2016</asp:ListItem>
                 <asp:ListItem>2015</asp:ListItem>
                 <asp:ListItem>2014</asp:ListItem>
                 <asp:ListItem>2013</asp:ListItem>
                 <asp:ListItem>2012</asp:ListItem>
                 <asp:ListItem>2011</asp:ListItem>
                 <asp:ListItem>2010</asp:ListItem>
                 <asp:ListItem>2009</asp:ListItem>
                 <asp:ListItem>2008</asp:ListItem>
                 <asp:ListItem>2007</asp:ListItem>
                 <asp:ListItem>2006</asp:ListItem>
                 <asp:ListItem>2005</asp:ListItem>
                 <asp:ListItem>2004</asp:ListItem>
                 <asp:ListItem>2003</asp:ListItem>
                 <asp:ListItem>2002</asp:ListItem>
                 <asp:ListItem>2001</asp:ListItem>
                 <asp:ListItem>2000</asp:ListItem>
                 <asp:ListItem>1999</asp:ListItem>
                 <asp:ListItem>1998</asp:ListItem>
                 <asp:ListItem>1997</asp:ListItem>
    </asp:DropDownList> <asp:Label ID="Label3" runat="server" ForeColor="White" Text=" / "/>
    <asp:DropDownList ID="DD_Month" runat="server">
        <asp:ListItem>12</asp:ListItem>
        <asp:ListItem>11</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
    </asp:DropDownList><asp:Label ID="Label4" runat="server" ForeColor="White" Text=" / "/>
    <asp:DropDownList ID="DD_Date" runat="server">

        <asp:ListItem>31</asp:ListItem>
<asp:ListItem>30</asp:ListItem>
<asp:ListItem>29</asp:ListItem>
<asp:ListItem>28</asp:ListItem>
<asp:ListItem>27</asp:ListItem>
<asp:ListItem>26</asp:ListItem>
<asp:ListItem>25</asp:ListItem>
<asp:ListItem>24</asp:ListItem>
<asp:ListItem>23</asp:ListItem>
<asp:ListItem>22</asp:ListItem>
<asp:ListItem>21</asp:ListItem>
<asp:ListItem>20</asp:ListItem>
<asp:ListItem>19</asp:ListItem>
<asp:ListItem>18</asp:ListItem>
<asp:ListItem>17</asp:ListItem>
<asp:ListItem>16</asp:ListItem>
<asp:ListItem>15</asp:ListItem>
<asp:ListItem>14</asp:ListItem>
<asp:ListItem>13</asp:ListItem>
<asp:ListItem>12</asp:ListItem>
<asp:ListItem>11</asp:ListItem>
<asp:ListItem>10</asp:ListItem>
<asp:ListItem>9</asp:ListItem>
<asp:ListItem>8</asp:ListItem>
<asp:ListItem>7</asp:ListItem>
<asp:ListItem>6</asp:ListItem>
<asp:ListItem>5</asp:ListItem>
<asp:ListItem>4</asp:ListItem>
<asp:ListItem>3</asp:ListItem>
<asp:ListItem>2</asp:ListItem>
<asp:ListItem>1</asp:ListItem>
    </asp:DropDownList><asp:Label ID="Label5" runat="server" ForeColor="White" Text=" , "/>
    <asp:DropDownList ID="DD_Hours" runat="server">
        <asp:ListItem>0</asp:ListItem>
<asp:ListItem>1</asp:ListItem>
<asp:ListItem>2</asp:ListItem>
<asp:ListItem>3</asp:ListItem>
<asp:ListItem>4</asp:ListItem>
<asp:ListItem>5</asp:ListItem>
<asp:ListItem>6</asp:ListItem>
<asp:ListItem>7</asp:ListItem>
<asp:ListItem>8</asp:ListItem>
<asp:ListItem>9</asp:ListItem>
<asp:ListItem>10</asp:ListItem>
<asp:ListItem>11</asp:ListItem>
<asp:ListItem>12</asp:ListItem>
<asp:ListItem>13</asp:ListItem>
<asp:ListItem>14</asp:ListItem>
<asp:ListItem>15</asp:ListItem>
<asp:ListItem>16</asp:ListItem>
<asp:ListItem>17</asp:ListItem>
<asp:ListItem>18</asp:ListItem>
<asp:ListItem>19</asp:ListItem>
<asp:ListItem>20</asp:ListItem>
<asp:ListItem>21</asp:ListItem>
<asp:ListItem>22</asp:ListItem>
<asp:ListItem>23</asp:ListItem>

    </asp:DropDownList><asp:Label ID="Label6" runat="server" ForeColor="White" Text=" : "/>
    <asp:DropDownList ID="DD_Minutes" runat="server">
        <asp:ListItem>0</asp:ListItem>
<asp:ListItem>1</asp:ListItem>
<asp:ListItem>2</asp:ListItem>
<asp:ListItem>3</asp:ListItem>
<asp:ListItem>4</asp:ListItem>
<asp:ListItem>5</asp:ListItem>
<asp:ListItem>6</asp:ListItem>
<asp:ListItem>7</asp:ListItem>
<asp:ListItem>8</asp:ListItem>
<asp:ListItem>9</asp:ListItem>
<asp:ListItem>10</asp:ListItem>
<asp:ListItem>11</asp:ListItem>
<asp:ListItem>12</asp:ListItem>
<asp:ListItem>13</asp:ListItem>
<asp:ListItem>14</asp:ListItem>
<asp:ListItem>15</asp:ListItem>
<asp:ListItem>16</asp:ListItem>
<asp:ListItem>17</asp:ListItem>
<asp:ListItem>18</asp:ListItem>
<asp:ListItem>19</asp:ListItem>
<asp:ListItem>20</asp:ListItem>
<asp:ListItem>21</asp:ListItem>
<asp:ListItem>22</asp:ListItem>
<asp:ListItem>23</asp:ListItem>
<asp:ListItem>24</asp:ListItem>
<asp:ListItem>25</asp:ListItem>
<asp:ListItem>26</asp:ListItem>
<asp:ListItem>27</asp:ListItem>
<asp:ListItem>28</asp:ListItem>
<asp:ListItem>29</asp:ListItem>
<asp:ListItem>30</asp:ListItem>
<asp:ListItem>31</asp:ListItem>
<asp:ListItem>32</asp:ListItem>
<asp:ListItem>33</asp:ListItem>
<asp:ListItem>34</asp:ListItem>
<asp:ListItem>35</asp:ListItem>
<asp:ListItem>36</asp:ListItem>
<asp:ListItem>37</asp:ListItem>
<asp:ListItem>38</asp:ListItem>
<asp:ListItem>39</asp:ListItem>
<asp:ListItem>40</asp:ListItem>
<asp:ListItem>41</asp:ListItem>
<asp:ListItem>42</asp:ListItem>
<asp:ListItem>43</asp:ListItem>
<asp:ListItem>44</asp:ListItem>
<asp:ListItem>45</asp:ListItem>
<asp:ListItem>46</asp:ListItem>
<asp:ListItem>47</asp:ListItem>
<asp:ListItem>48</asp:ListItem>
<asp:ListItem>49</asp:ListItem>
<asp:ListItem>50</asp:ListItem>
<asp:ListItem>51</asp:ListItem>
<asp:ListItem>52</asp:ListItem>
<asp:ListItem>53</asp:ListItem>
<asp:ListItem>54</asp:ListItem>
<asp:ListItem>55</asp:ListItem>
<asp:ListItem>56</asp:ListItem>
<asp:ListItem>57</asp:ListItem>
<asp:ListItem>58</asp:ListItem>
<asp:ListItem>59</asp:ListItem>
    </asp:DropDownList><asp:Label ID="Label7" runat="server" ForeColor="White" Text=" : "/>
    <asp:DropDownList ID="DD_Seconds" runat="server">
        <asp:ListItem>0</asp:ListItem>
<asp:ListItem>1</asp:ListItem>
<asp:ListItem>2</asp:ListItem>
<asp:ListItem>3</asp:ListItem>
<asp:ListItem>4</asp:ListItem>
<asp:ListItem>5</asp:ListItem>
<asp:ListItem>6</asp:ListItem>
<asp:ListItem>7</asp:ListItem>
<asp:ListItem>8</asp:ListItem>
<asp:ListItem>9</asp:ListItem>
<asp:ListItem>10</asp:ListItem>
<asp:ListItem>11</asp:ListItem>
<asp:ListItem>12</asp:ListItem>
<asp:ListItem>13</asp:ListItem>
<asp:ListItem>14</asp:ListItem>
<asp:ListItem>15</asp:ListItem>
<asp:ListItem>16</asp:ListItem>
<asp:ListItem>17</asp:ListItem>
<asp:ListItem>18</asp:ListItem>
<asp:ListItem>19</asp:ListItem>
<asp:ListItem>20</asp:ListItem>
<asp:ListItem>21</asp:ListItem>
<asp:ListItem>22</asp:ListItem>
<asp:ListItem>23</asp:ListItem>
<asp:ListItem>24</asp:ListItem>
<asp:ListItem>25</asp:ListItem>
<asp:ListItem>26</asp:ListItem>
<asp:ListItem>27</asp:ListItem>
<asp:ListItem>28</asp:ListItem>
<asp:ListItem>29</asp:ListItem>
<asp:ListItem>30</asp:ListItem>
<asp:ListItem>31</asp:ListItem>
<asp:ListItem>32</asp:ListItem>
<asp:ListItem>33</asp:ListItem>
<asp:ListItem>34</asp:ListItem>
<asp:ListItem>35</asp:ListItem>
<asp:ListItem>36</asp:ListItem>
<asp:ListItem>37</asp:ListItem>
<asp:ListItem>38</asp:ListItem>
<asp:ListItem>39</asp:ListItem>
<asp:ListItem>40</asp:ListItem>
<asp:ListItem>41</asp:ListItem>
<asp:ListItem>42</asp:ListItem>
<asp:ListItem>43</asp:ListItem>
<asp:ListItem>44</asp:ListItem>
<asp:ListItem>45</asp:ListItem>
<asp:ListItem>46</asp:ListItem>
<asp:ListItem>47</asp:ListItem>
<asp:ListItem>48</asp:ListItem>
<asp:ListItem>49</asp:ListItem>
<asp:ListItem>50</asp:ListItem>
<asp:ListItem>51</asp:ListItem>
<asp:ListItem>52</asp:ListItem>
<asp:ListItem>53</asp:ListItem>
<asp:ListItem>54</asp:ListItem>
<asp:ListItem>55</asp:ListItem>
<asp:ListItem>56</asp:ListItem>
<asp:ListItem>57</asp:ListItem>
<asp:ListItem>58</asp:ListItem>
<asp:ListItem>59</asp:ListItem>
    </asp:DropDownList>

            &nbsp;&nbsp;
              <asp:Button class="login10-form-btn" ID="Button2" runat="server" Text="From" />
            &nbsp;
              <asp:Button class="login10-form-btn" ID="Button3" runat="server" style="margin-bottom: 0px" Text="To" /> 

          <br /><br />
        <asp:Table ID="Table1" runat="server" ForeColor="White" Width="327px" Visible="False">
            <asp:TableRow runat="server" BackColor="White" BorderStyle="Solid" ForeColor="Black">
                <asp:TableCell runat="server">Timestamp</asp:TableCell>
                <asp:TableCell runat="server">Reading</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            <br />
      
              <asp:Chart ID="Chart1" runat="server" Height="456px" Visible="False" Width="566px">
                  <series>
                      <asp:Series Name="Series1">
                      </asp:Series>
                  </series>
                  <chartareas>
                      <asp:ChartArea Name="ChartArea1">
                      </asp:ChartArea>
                  </chartareas>


              </asp:Chart>
             
        </asp:Panel>
          </center>
    </form>
        
        
</div>
		</div>
	</div>
  
   
</body>
</html>
