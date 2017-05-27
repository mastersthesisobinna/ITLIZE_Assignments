<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="MyDemoITLize_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }

        .auto-style3
        {
            width: 150px;
        }

        .auto-style6
        {
            width: 70px;
        }

        .auto-style7
        {
            width: 182px;
        }
        .auto-style8 {
            width: 290px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style11 {
            width: 104px;
        }
        .auto-style12 {
            width: 79px;
        }
        .auto-style13 {
            width: 290px;
        }

        .pinkBorder{
            border-style: solid;
            border-width: 1px;
            border-color: rgb(14, 193, 204);
            background-color: rgb(234, 219, 219);
        }

        fieldset{
            border-style: solid;
            border-width: 10px;
            border-color: rgb(247, 248, 87);
            margin-top: 10px;
            margin-bottom: 10px;
            background-color: lightyellow;
        }

        div{
            width: 70%;
            margin: auto;
        }

        .indicatorsMinimum{
            border-style: solid;
            border-width: 1px;
            background-color: rgb(246, 38, 38);
            text-align: center;
            padding-left: 5px;
            padding-right: 5px;
            color: white;
        }

        .indicatorsMaximum{
            border-style: solid;
            border-width: 1px;
            background-color: rgb(38, 74, 246);
            text-align: center;
            padding-left: 5px;
            padding-right: 5px;
            width: 50px;
            margin-left: 0px;
            color: white;
        }

        .slider{
            background-color: white;
        }

        textarea{
            width: 400px;
        }

        
        
    </style>

    <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script>
			function readURL(input) {
				if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#preview')
                    .attr('src', e.target.result)
                    .width(75)
                    .height(75);
            }

            reader.readAsDataURL(input.files[0]);
			}
    }
		</script>
</head>
<body>
    <form id="form1" runat="server">
        <h1 id="author" style="display:none;">Name: Obinna Mogbogu
            <br />
            Project Focus: HTML, CSS, JavaScript
            <br />
            Period: May, 2017
        </h1>
        <div>
            <h1>Please Enter Your Details For Our Dating Website!</h1>
            <fieldset id="your_face">
                <legend>Your Face</legend>

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" Text="*Your Image :"></asp:Label>
                        </td>
                        <td>
                            <input type="file" onchange="readURL(this)" id="image" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label2" runat="server" Text="Image preview :"></asp:Label>
                        </td>
                        <td><img id="preview" src="#" alt="No preview available" class="pinkBorder"/></td>
                    </tr>
                </table>

            </fieldset>
            <fieldset id="general_details">
                <legend>Your General Details</legend>

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label3" runat="server" Text="*Name :" ></asp:Label>
                        </td>
                        <td colspan="2">
                            <input id="Text1" type="text" required="required" class="pinkBorder" value="Your full name" onfocus="this.value='';" /></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label4" runat="server" Text="*Gender :"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <input id="Radio1" name="gender" title="male" type="radio" value="male" required="required"/><asp:Label ID="Label9" runat="server" Text="Male"></asp:Label>
                        </td>
                        <td>
                            <input id="Radio2" name="gender" title="female" type="radio" value="female" required="required"/><asp:Label ID="Label10" runat="server" Text="Female"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label5" runat="server" Text="*Age :"></asp:Label>
                        </td>
                        <td colspan="2">
                            <input id="ageField" type="number" min="0" required="required" class="pinkBorder"/></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label6" runat="server" Text="*Date of Birth"></asp:Label>
                        </td>
                        <td colspan="2">
                            <input id="calendarField" type="date" required="required" class="pinkBorder"/></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label7" runat="server" Text="Favorite Color :"></asp:Label>
                        </td>
                        <td colspan="2">
                            <input id="colorField" type="color" class="pinkBorder"/></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label8" runat="server" Text="*Which country :"></asp:Label>
                        </td>
                        <td colspan="2">
                            <select id="selectCountry" required="required" class="pinkBorder">
                                <option value="sel">-- Select country --</option>
                                <option value="AF">Afghanistan</option>
                                <option value="AX">Åland Islands</option>
                                <option value="AL">Albania</option>
                                <option value="DZ">Algeria</option>
                                <option value="AS">American Samoa</option>
                                <option value="AD">Andorra</option>
                                <option value="AO">Angola</option>
                                <option value="AI">Anguilla</option>
                                <option value="AQ">Antarctica</option>
                                <option value="AG">Antigua and Barbuda</option>
                                <option value="AR">Argentina</option>
                                <option value="AM">Armenia</option>
                                <option value="AW">Aruba</option>
                                <option value="AU">Australia</option>
                                <option value="AT">Austria</option>
                                <option value="AZ">Azerbaijan</option>
                                <option value="BS">Bahamas</option>
                                <option value="BH">Bahrain</option>
                                <option value="BD">Bangladesh</option>
                                <option value="BB">Barbados</option>
                                <option value="BY">Belarus</option>
                                <option value="BE">Belgium</option>
                                <option value="BZ">Belize</option>
                                <option value="BJ">Benin</option>
                                <option value="BM">Bermuda</option>
                                <option value="BT">Bhutan</option>
                                <option value="BO">Bolivia, Plurinational State of</option>
                                <option value="BQ">Bonaire, Sint Eustatius and Saba</option>
                                <option value="BA">Bosnia and Herzegovina</option>
                                <option value="BW">Botswana</option>
                                <option value="BV">Bouvet Island</option>
                                <option value="BR">Brazil</option>
                                <option value="IO">British Indian Ocean Territory</option>
                                <option value="BN">Brunei Darussalam</option>
                                <option value="BG">Bulgaria</option>
                                <option value="BF">Burkina Faso</option>
                                <option value="BI">Burundi</option>
                                <option value="KH">Cambodia</option>
                                <option value="CM">Cameroon</option>
                                <option value="CA">Canada</option>
                                <option value="CV">Cape Verde</option>
                                <option value="KY">Cayman Islands</option>
                                <option value="CF">Central African Republic</option>
                                <option value="TD">Chad</option>
                                <option value="CL">Chile</option>
                                <option value="CN">China</option>
                                <option value="CX">Christmas Island</option>
                                <option value="CC">Cocos (Keeling) Islands</option>
                                <option value="CO">Colombia</option>
                                <option value="KM">Comoros</option>
                                <option value="CG">Congo</option>
                                <option value="CD">Congo, the Democratic Republic of the</option>
                                <option value="CK">Cook Islands</option>
                                <option value="CR">Costa Rica</option>
                                <option value="CI">Côte d'Ivoire</option>
                                <option value="HR">Croatia</option>
                                <option value="CU">Cuba</option>
                                <option value="CW">Curaçao</option>
                                <option value="CY">Cyprus</option>
                                <option value="CZ">Czech Republic</option>
                                <option value="DK">Denmark</option>
                                <option value="DJ">Djibouti</option>
                                <option value="DM">Dominica</option>
                                <option value="DO">Dominican Republic</option>
                                <option value="EC">Ecuador</option>
                                <option value="EG">Egypt</option>
                                <option value="SV">El Salvador</option>
                                <option value="GQ">Equatorial Guinea</option>
                                <option value="ER">Eritrea</option>
                                <option value="EE">Estonia</option>
                                <option value="ET">Ethiopia</option>
                                <option value="FK">Falkland Islands (Malvinas)</option>
                                <option value="FO">Faroe Islands</option>
                                <option value="FJ">Fiji</option>
                                <option value="FI">Finland</option>
                                <option value="FR">France</option>
                                <option value="GF">French Guiana</option>
                                <option value="PF">French Polynesia</option>
                                <option value="TF">French Southern Territories</option>
                                <option value="GA">Gabon</option>
                                <option value="GM">Gambia</option>
                                <option value="GE">Georgia</option>
                                <option value="DE">Germany</option>
                                <option value="GH">Ghana</option>
                                <option value="GI">Gibraltar</option>
                                <option value="GR">Greece</option>
                                <option value="GL">Greenland</option>
                                <option value="GD">Grenada</option>
                                <option value="GP">Guadeloupe</option>
                                <option value="GU">Guam</option>
                                <option value="GT">Guatemala</option>
                                <option value="GG">Guernsey</option>
                                <option value="GN">Guinea</option>
                                <option value="GW">Guinea-Bissau</option>
                                <option value="GY">Guyana</option>
                                <option value="HT">Haiti</option>
                                <option value="HM">Heard Island and McDonald Islands</option>
                                <option value="VA">Holy See (Vatican City State)</option>
                                <option value="HN">Honduras</option>
                                <option value="HK">Hong Kong</option>
                                <option value="HU">Hungary</option>
                                <option value="IS">Iceland</option>
                                <option value="IN">India</option>
                                <option value="ID">Indonesia</option>
                                <option value="IR">Iran, Islamic Republic of</option>
                                <option value="IQ">Iraq</option>
                                <option value="IE">Ireland</option>
                                <option value="IM">Isle of Man</option>
                                <option value="IL">Israel</option>
                                <option value="IT">Italy</option>
                                <option value="JM">Jamaica</option>
                                <option value="JP">Japan</option>
                                <option value="JE">Jersey</option>
                                <option value="JO">Jordan</option>
                                <option value="KZ">Kazakhstan</option>
                                <option value="KE">Kenya</option>
                                <option value="KI">Kiribati</option>
                                <option value="KP">Korea, Democratic People's Republic of</option>
                                <option value="KR">Korea, Republic of</option>
                                <option value="KW">Kuwait</option>
                                <option value="KG">Kyrgyzstan</option>
                                <option value="LA">Lao People's Democratic Republic</option>
                                <option value="LV">Latvia</option>
                                <option value="LB">Lebanon</option>
                                <option value="LS">Lesotho</option>
                                <option value="LR">Liberia</option>
                                <option value="LY">Libya</option>
                                <option value="LI">Liechtenstein</option>
                                <option value="LT">Lithuania</option>
                                <option value="LU">Luxembourg</option>
                                <option value="MO">Macao</option>
                                <option value="MK">Macedonia, the former Yugoslav Republic of</option>
                                <option value="MG">Madagascar</option>
                                <option value="MW">Malawi</option>
                                <option value="MY">Malaysia</option>
                                <option value="MV">Maldives</option>
                                <option value="ML">Mali</option>
                                <option value="MT">Malta</option>
                                <option value="MH">Marshall Islands</option>
                                <option value="MQ">Martinique</option>
                                <option value="MR">Mauritania</option>
                                <option value="MU">Mauritius</option>
                                <option value="YT">Mayotte</option>
                                <option value="MX">Mexico</option>
                                <option value="FM">Micronesia, Federated States of</option>
                                <option value="MD">Moldova, Republic of</option>
                                <option value="MC">Monaco</option>
                                <option value="MN">Mongolia</option>
                                <option value="ME">Montenegro</option>
                                <option value="MS">Montserrat</option>
                                <option value="MA">Morocco</option>
                                <option value="MZ">Mozambique</option>
                                <option value="MM">Myanmar</option>
                                <option value="NA">Namibia</option>
                                <option value="NR">Nauru</option>
                                <option value="NP">Nepal</option>
                                <option value="NL">Netherlands</option>
                                <option value="NC">New Caledonia</option>
                                <option value="NZ">New Zealand</option>
                                <option value="NI">Nicaragua</option>
                                <option value="NE">Niger</option>
                                <option value="NG">Nigeria</option>
                                <option value="NU">Niue</option>
                                <option value="NF">Norfolk Island</option>
                                <option value="MP">Northern Mariana Islands</option>
                                <option value="NO">Norway</option>
                                <option value="OM">Oman</option>
                                <option value="PK">Pakistan</option>
                                <option value="PW">Palau</option>
                                <option value="PS">Palestinian Territory, Occupied</option>
                                <option value="PA">Panama</option>
                                <option value="PG">Papua New Guinea</option>
                                <option value="PY">Paraguay</option>
                                <option value="PE">Peru</option>
                                <option value="PH">Philippines</option>
                                <option value="PN">Pitcairn</option>
                                <option value="PL">Poland</option>
                                <option value="PT">Portugal</option>
                                <option value="PR">Puerto Rico</option>
                                <option value="QA">Qatar</option>
                                <option value="RE">Réunion</option>
                                <option value="RO">Romania</option>
                                <option value="RU">Russian Federation</option>
                                <option value="RW">Rwanda</option>
                                <option value="BL">Saint Barthélemy</option>
                                <option value="SH">Saint Helena, Ascension and Tristan da Cunha</option>
                                <option value="KN">Saint Kitts and Nevis</option>
                                <option value="LC">Saint Lucia</option>
                                <option value="MF">Saint Martin (French part)</option>
                                <option value="PM">Saint Pierre and Miquelon</option>
                                <option value="VC">Saint Vincent and the Grenadines</option>
                                <option value="WS">Samoa</option>
                                <option value="SM">San Marino</option>
                                <option value="ST">Sao Tome and Principe</option>
                                <option value="SA">Saudi Arabia</option>
                                <option value="SN">Senegal</option>
                                <option value="RS">Serbia</option>
                                <option value="SC">Seychelles</option>
                                <option value="SL">Sierra Leone</option>
                                <option value="SG">Singapore</option>
                                <option value="SX">Sint Maarten (Dutch part)</option>
                                <option value="SK">Slovakia</option>
                                <option value="SI">Slovenia</option>
                                <option value="SB">Solomon Islands</option>
                                <option value="SO">Somalia</option>
                                <option value="ZA">South Africa</option>
                                <option value="GS">South Georgia and the South Sandwich Islands</option>
                                <option value="SS">South Sudan</option>
                                <option value="ES">Spain</option>
                                <option value="LK">Sri Lanka</option>
                                <option value="SD">Sudan</option>
                                <option value="SR">Suriname</option>
                                <option value="SJ">Svalbard and Jan Mayen</option>
                                <option value="SZ">Swaziland</option>
                                <option value="SE">Sweden</option>
                                <option value="CH">Switzerland</option>
                                <option value="SY">Syrian Arab Republic</option>
                                <option value="TW">Taiwan, Province of China</option>
                                <option value="TJ">Tajikistan</option>
                                <option value="TZ">Tanzania, United Republic of</option>
                                <option value="TH">Thailand</option>
                                <option value="TL">Timor-Leste</option>
                                <option value="TG">Togo</option>
                                <option value="TK">Tokelau</option>
                                <option value="TO">Tonga</option>
                                <option value="TT">Trinidad and Tobago</option>
                                <option value="TN">Tunisia</option>
                                <option value="TR">Turkey</option>
                                <option value="TM">Turkmenistan</option>
                                <option value="TC">Turks and Caicos Islands</option>
                                <option value="TV">Tuvalu</option>
                                <option value="UG">Uganda</option>
                                <option value="UA">Ukraine</option>
                                <option value="AE">United Arab Emirates</option>
                                <option value="GB">United Kingdom</option>
                                <option value="US">United States</option>
                                <option value="UM">United States Minor Outlying Islands</option>
                                <option value="UY">Uruguay</option>
                                <option value="UZ">Uzbekistan</option>
                                <option value="VU">Vanuatu</option>
                                <option value="VE">Venezuela, Bolivarian Republic of</option>
                                <option value="VN">Viet Nam</option>
                                <option value="VG">Virgin Islands, British</option>
                                <option value="VI">Virgin Islands, U.S.</option>
                                <option value="WF">Wallis and Futuna</option>
                                <option value="EH">Western Sahara</option>
                                <option value="YE">Yemen</option>
                                <option value="ZM">Zambia</option>
                                <option value="ZW">Zimbabwe</option>
                            </select></td>
                    </tr>
                </table>

            </fieldset>
            <fieldset id="your_indicators">
                <legend>Your Indicators</legend>

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label11" runat="server" Text="Height :"></asp:Label>
                        </td>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style6">
                                        <div class="indicatorsMinimum"><asp:Label ID="Label13" runat="server" Text="Short"></asp:Label></div>
                                    </td>
                                    <td class="auto-style7">
                                        <input id="height" type="range" min="0" max="100" value="50" class="slider"/></td>
                                    <td>
                                        <div class="indicatorsMaximum"><asp:Label ID="Label15" runat="server" Text="Tall"></asp:Label></div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label12" runat="server" Text="Salary :"></asp:Label>
                        </td>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style6">
                                        <div class="indicatorsMinimum"><asp:Label ID="Label14" runat="server" Text="Poor"></asp:Label></div>
                                    </td>
                                    <td class="auto-style7">
                                        <input id="salary" type="range" min="0" max="100" value="50" class="slider"/></td>
                                    <td>
                                        <div class="indicatorsMaximum"><asp:Label ID="Label16" runat="server" Text="Rich"></asp:Label></div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

            </fieldset>
            <fieldset id="your_contact_info">
                <legend>Your Contact Information</legend>

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label17" runat="server" Text="*Email :"></asp:Label>
                        </td>
                        <td colspan="3"><input id="email" type="email" title="Example: abc@yahoo.com" required="required" class="pinkBorder"/></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label18" runat="server" Text="*Mobile :"></asp:Label>
                        </td>
                        <td colspan="3"><input id="mobile" type="tel" title="Example: 123-456-7890" required="required" class="pinkBorder"/></td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label19" runat="server" Text="*Address :"></asp:Label>
                        </td>
                        <td class="auto-style9" colspan="3"><textarea id="address" required="required" class="pinkBorder"></textarea></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label20" runat="server" Text="Method to contact you :"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <input id="Checkbox1" type="checkbox" /><asp:Label ID="Label21" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <input id="Checkbox2" type="checkbox" /><asp:Label ID="Label22" runat="server" Text="Whatsapp"></asp:Label>
                        </td>
                        <td>
                            <input id="Checkbox3" type="checkbox" /><asp:Label ID="Label23" runat="server" Text="In - app chat"></asp:Label>
                        </td>
                    </tr>
                </table>

            </fieldset>

            <input type="submit" value="Submit">

        </div>
    </form>
</body>
</html>
