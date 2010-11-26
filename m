Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABFE04C80BEF
	for <poky@lists.pokylinux.org>; Thu, 25 Nov 2010 18:56:41 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Nov 2010 16:56:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,257,1288594800"; d="scan'208";a="681131099"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2010 16:56:40 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 26 Nov 2010 08:54:00 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 26 Nov 2010 08:53:52 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Poky <poky@lists.pokylinux.org>
Date: Fri, 26 Nov 2010 08:53:51 +0800
Thread-Topic: [poky] Eclipse plugin question
Thread-Index: AcuMu5/1pD5CI6KeSyq8sgl6a7A1vAARhEyQ
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F1B908730D8@shsmsx502.ccr.corp.intel.com>
References: <4CEE8AD1.80603@mlbassoc.com>
In-Reply-To: <4CEE8AD1.80603@mlbassoc.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: Eclipse plugin question
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 26 Nov 2010 00:56:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Gary,

Maybe you need to adjust some TCF connection configuration. Here is a simpl=
e way to check whether the default TCF connection configuration works for y=
our target:

1. change to Remote System Explorer perspective
2. right click the TCF connection to your target machine, and choose "Prope=
rties"->"Connector Services"->"TCF Connection Settings", you might see the =
following properties, please make sure having them set correctly according =
to your target machine
- Login.Requied: whether the TCF terminal service requires login? should be=
 "true" for our 0.9 release
- Pwd.Required: whether the login requires password? Adjust to the target s=
ystem configuration
- Login.Prompt: prompt string for input login name, usually leave as the de=
fault
- Password.Prompt: prompt string for input password, usually leave as the d=
ault
- Command.Prompt: the last characters of the terminal shell prompt(i.e. PS1=
)
3. After setting the above properties, you may try testing the configuratio=
n by expanding the TCF connection to your target machine and launching the =
terminal to your target machine. If everything works fine, a terminal view =
should be opened and a command prompt would be displayed in that view.

Hope this may help you.

Best Regards,
-Lianhao Lu

Gary Thomas wrote on 2010-11-26:
> I have the eclipse plugin working fairly well now - I can build an applic=
ation, etc.
> I tried manually downloading the code to my board (I have real
> hardware, not
> QEMU) and it runs fine.
>=20
> Next, I wanted to try running/debugging from eclipse.  I set up the
> run configuration and the code was downloaded to the board.  The last
> indication said it was starting the debugger.
> This window stayed up a long time and then nothing more.
>=20
> Note: I did figure out that I needed tcf-agent running on my board
> (this is not documented).  I also have GDB server on the board.
>=20
> You can see my setup at http://www.mlbassoc.com/poky/eclipse_plugin
>=20
> Thanks for any ideas/pointers
>

Best Regards,
Lianhao


