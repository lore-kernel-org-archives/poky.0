Subject: Re: How to build the kernel with a particular driver not included into the kernel, but built as a loadable module?
To: poky@lists.yoctoproject.org
From: "Ashish" <ashish.emailaddress@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (182.72.92.62)
X-Originating-Platform: Linux Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Jan 2020 01:57:26 -0800
References: <64c8ab1e-3a75-9b42-1e31-ff6b412f10f8@rawbw.com>
In-Reply-To: <64c8ab1e-3a75-9b42-1e31-ff6b412f10f8@rawbw.com>
Message-ID: <1161.1580119046194662417@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WXoXzZbpSNQOqSQmztac"

--WXoXzZbpSNQOqSQmztac
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

- You can look at kernel config file and make it as module
- You can look at below macro's :
MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-module-ab123"
KERNEL_MODULE_AUTOLOAD +=3D "mymod"

--WXoXzZbpSNQOqSQmztac
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

- You can look at kernel config file and make it as module&nbsp;<br />- You=
 can look at below macro's :<br />
<div>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;MACHINE_EXTRA_RRE=
COMMENDS +=3D "kernel-module-ab123"</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;KERNEL_MODULE_AUT=
OLOAD +=3D "mymod"</div>
<div><br /><br /></div>

--WXoXzZbpSNQOqSQmztac--
