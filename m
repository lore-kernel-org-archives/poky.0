Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C62924C80BEF
	for <poky@lists.pokylinux.org>; Thu, 25 Nov 2010 19:42:55 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2010 17:42:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,258,1288594800"; d="scan'208";a="681138590"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2010 17:42:54 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 26 Nov 2010 09:42:48 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 26 Nov 2010 09:42:48 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 26 Nov 2010 09:42:47 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>, Gary Thomas <gary@mlbassoc.com>,
	Poky <poky@lists.pokylinux.org>
Date: Fri, 26 Nov 2010 09:42:44 +0800
Thread-Topic: [poky] Eclipse plugin question
Thread-Index: AcuMu5/1pD5CI6KeSyq8sgl6a7A1vAARhEyQAAJar2A=
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D42C67F29@shsmsx502.ccr.corp.intel.com>
References: <4CEE8AD1.80603@mlbassoc.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F1B908730D8@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F1B908730D8@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
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
X-List-Received-Date: Fri, 26 Nov 2010 01:42:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Lu, Lianhao
>Sent: Friday, November 26, 2010 8:54 AM
>
>Hi Gary,
>
>Maybe you need to adjust some TCF connection configuration. Here is a simp=
le way to check
>whether the default TCF connection configuration works for your target:
>
>1. change to Remote System Explorer perspective
>2. right click the TCF connection to your target machine, and choose
>"Properties"->"Connector Services"->"TCF Connection Settings", you might s=
ee the
>following properties, please make sure having them set correctly according=
 to your target
>machine
>- Login.Requied: whether the TCF terminal service requires login? should b=
e "true" for our
>0.9 release
>- Pwd.Required: whether the login requires password? Adjust to the target =
system
>configuration
>- Login.Prompt: prompt string for input login name, usually leave as the d=
efault
>- Password.Prompt: prompt string for input password, usually leave as the =
dault
>- Command.Prompt: the last characters of the terminal shell prompt(i.e. PS=
1)
>3. After setting the above properties, you may try testing the configurati=
on by expanding
>the TCF connection to your target machine and launching the terminal to yo=
ur target
>machine. If everything works fine, a terminal view should be opened and a =
command
>prompt would be displayed in that view.
>
>Hope this may help you.
>
>Best Regards,
>-Lianhao Lu

Do we document those info somewhere? If not, and if Gary verifies above wor=
king, we
need to document then. :-)

Thanks
Kevin

>
>Gary Thomas wrote on 2010-11-26:
>> I have the eclipse plugin working fairly well now - I can build an appli=
cation, etc.
>> I tried manually downloading the code to my board (I have real
>> hardware, not
>> QEMU) and it runs fine.
>>
>> Next, I wanted to try running/debugging from eclipse.  I set up the
>> run configuration and the code was downloaded to the board.  The last
>> indication said it was starting the debugger.
>> This window stayed up a long time and then nothing more.
>>
>> Note: I did figure out that I needed tcf-agent running on my board
>> (this is not documented).  I also have GDB server on the board.
>>
>> You can see my setup at http://www.mlbassoc.com/poky/eclipse_plugin
>>
>> Thanks for any ideas/pointers
>>
>
>Best Regards,
>Lianhao
>
>_______________________________________________
>poky mailing list
>poky@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/poky

