Return-Path: <pandey_himanshu80@rediffmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13659E002AC; Sat, 21 Jun 2014 05:32:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: ****
X-Spam-Status: No, score=4.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_IMAGE_ONLY_24,HTML_MESSAGE,
	MSGID_FROM_MTA_HEADER, RCVD_IN_BRBL_LASTEXT, RCVD_IN_DNSWL_NONE,
	RDNS_NONE, 
	T_REMOTE_IMAGE,UNPARSEABLE_RELAY autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pandey_himanshu80[at]rediffmail.com)
	*  1.6 RCVD_IN_BRBL_LASTEXT RBL: RCVD_IN_BRBL_LASTEXT
	*      [203.199.83.122 listed in bb.barracudacentral.org]
	* 1.3 HTML_IMAGE_ONLY_24 BODY: HTML: images with 2000-2400 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [203.199.83.122 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.0 MSGID_FROM_MTA_HEADER Message-Id was added by a relay
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
	*  0.0 T_REMOTE_IMAGE Message contains an external image
X-Greylist: delayed 570 seconds by postgrey-1.32 at yocto-www;
	Sat, 21 Jun 2014 05:32:00 PDT
Received: from f4mail-83-122.rediffmail.com (unknown [203.199.83.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 420DEE00288
	for <poky@yoctoproject.org>; Sat, 21 Jun 2014 05:32:00 -0700 (PDT)
Received: from rediffmail.com (unknown [10.50.250.70])
	by f4mail-83-121.rediffmail.com (Postfix) with SMTP id 1795A30826D7
	for <poky@yoctoproject.org>; Sat, 21 Jun 2014 17:44:12 +0530 (IST)
Received: (qmail 22337 invoked by uid 510); 21 Jun 2014 12:22:09 -0000
Comment: DomainKeys? See http://antispam.yahoo.com/domainkeys
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=redf; d=rediffmail.com;
	b=dtikzvCmm7Z+Q4sx3HPlZninc3x32NkhG4QXzwoy/487x4SFAT/aa7JBoWbLfIbKxHFlD/UjkewCN6n2bXbqfVvsANRUAYtea77E3Sa1eoHWls53ucJD6pjbFDHeahwOx9uk3vTtYeoGPZaIMLaaqmPs7Eu5eP1TMjhXL/4HCGA=
	; 
x-m-msg: asd54ad564ad7aa6sd5as6d5; a6da7d6asas6dasd77; 5dad65ad5sd;
X-CTCH-Spam: Unknown
X-CTCH-VOD: Unknown
X-CTCH-Flags: : 0
X-CTCH-RefID: str=0001.0A160201.53A578F1.00C3, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-REDF-OSEN: pandey_himanshu80@rediffmail.com
Date: 21 Jun 2014 12:22:09 -0000
Message-ID: <20140621122209.22322.qmail@f4mail-235-146.rediffmail.com>
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Received: from unknown 122.177.232.157 by rediffmail.com via HTTP;
	21 Jun 2014 12:22:09 -0000
Sender: pandey_himanshu80@rediffmail.com
From: "Himanshu  Pandey" <pandey_himanshu80@rediffmail.com>
Subject: Hi
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 21 Jun 2014 12:32:06 -0000
Content-Type: multipart/alternative;
	boundary="=_d9b24a4d3de03b34c5fde5261a0830a1"

--=_d9b24a4d3de03b34c5fde5261a0830a1
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="UTF-8"

Hi,
I have a requirement that once the .tar.bz2 is created I want my shell script to be executed finally.&nbsp;
So what I have to do in order to achieve this. &nbsp;
Where do I have to add my shell script?
Regards,Himanshu Pandey

--=_d9b24a4d3de03b34c5fde5261a0830a1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<div>Hi,</div><div><br></div><div>I have a requirement that once the .tar.b=
z2 is created I want my shell script to be executed finally.&nbsp;</div><di=
v><br></div><div>So what I have to do in order to achieve this. &nbsp;</div=
><div><br></div><div>Where do I have to add my shell script?</div><div><br>=
</div><div>Regards,</div><div>Himanshu Pandey</div><br><A HREF=3D"http://si=
gads.rediff.com/RealMedia/ads/click_nx.ads/www.rediffmail.com/signatureline=
.htm@Middle?" target=3D"_blank"><IMG SRC=3D"http://sigads.rediff.com/RealMe=
dia/ads/adstream_nx.ads/www.rediffmail.com/signatureline.htm@Middle"></A><t=
able cellpadding=3D"0" cellspacing=3D"0"><tbody><tr><td><div style=3D"font-=
family: Arial, Helvetica, sans-serif; font-size:14px">Get your own <span st=
yle=3D"padding-bottom: 0px; background-color: #cc0000; padding-left: 3px; p=
adding-RIGHT: 3px; font-family: Arial, Helvetica, sans-serif; color: #fffff=
f; font-size: 12px; padding-top: 0px"><b>FREE</b></span> website,  <span st=
yle=3D"padding-bottom: 0px; background-color: #c00; padding-left: 3px; padd=
ing-RIGHT: 3px; font-family: Arial, Helvetica, sans-serif; color: #ffffff; =
font-size: 12px; padding-top: 0px"><b>FREE</b></span> domain &amp; <span st=
yle=3D"padding-bottom: 0px; background-color: #c00; padding-left: 3px; padd=
ing-RIGHT: 3px; font-family: Arial, Helvetica, sans-serif; color: #ffffff; =
font-size: 12px; padding-top: 0px"><b>FREE</b></span> mobile app with Compa=
ny email. &nbsp;</div></td><td><a href=3D"http://track.rediff.com/click?url=
=3D___http://businessemail.rediff.com/email-ids-for-companies-with-less-tha=
n-50-employees?sc_cid=3Dsign-1-10-13___&cmp=3Dhost&lnk=3Dsign-1-10-13&nsrv1=
=3Dhost" style=3D"font-family: Arial, Helvetica, sans-serif; color: #fff; f=
ont-size: 14px; color:#0000cc" target=3D"_blank"><b>Know More ></b></a><!--=
 <in-put type=3D"button" cl-ass=3D"button" on-click=3D"parent.location=3D&#=
39;http://track.rediff.com/click?url=3D___http://businessemail.rediff.com/c=
ompany-email-hosting-services?sc_cid=3Dsignature-23-9-13___&amp;cmp=3Dsigna=
ture-23-9-13&amp;lnk=3Dmypagelogout&amp;nsrv1=3Dhost&#39;" value=3D"Know mo=
re &gt;"> </input> --></td></tr></tbody></table>

--=_d9b24a4d3de03b34c5fde5261a0830a1--
