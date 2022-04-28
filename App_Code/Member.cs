using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Member
/// </summary>
public class Member
{
	public Member()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string Userid { get; set; }
    public string MemberID { get; set; }
    public int Trn { get; set; }
    public string Fname { get; set; }
    public string Lname { get; set; }
    public string DOB { get; set; }
    public string AddL1 { get; set; }
    public string AddL2 { get; set; }
    public string City { get; set; }
    public int Position { get; set; }
}