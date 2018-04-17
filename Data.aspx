<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Data.aspx.vb" Inherits="Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="black" >
    <br />
    <br />
    <br />
    <br />
    <br />
    <center>
    <form id="form1" runat="server">
   
      
        <asp:Panel ID="Panel1" runat="server" Width="703px" BorderStyle="Inset" BorderWidth="4px">
              <asp:Label ID="Label1" runat="server" ForeColor="White" Text="MAC ID:"></asp:Label><br /><br />
        <asp:Label ID="Label2" runat="server" Text="Choose a parameter:" ForeColor="White"></asp:Label><br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True">Energy</asp:ListItem>
            <asp:ListItem>VRMS</asp:ListItem>
            <asp:ListItem>IRMS</asp:ListItem>
            <asp:ListItem>Frequency</asp:ListItem>
        </asp:DropDownList>  <asp:TextBox ID="TextBox2" runat="server" Width="105px">From</asp:TextBox>
               <asp:TextBox ID="TextBox3" runat="server" Width="98px">To</asp:TextBox>&nbsp;
&nbsp;<asp:Button ID="Button1" runat="server" Text="View Readings" Width="136px" OnClick="Button1_Click" />
              &nbsp;
&nbsp;<asp:Button ID="Refresh" runat="server" Text="Refresh" />
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

              <asp:Button ID="Button2" runat="server" Text="From" />
              <asp:Button ID="Button3" runat="server" style="margin-bottom: 0px" Text="To" />

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
    </form>
        
        

        </center>

   
</body>
</html>
