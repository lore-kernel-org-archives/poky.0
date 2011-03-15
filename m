Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9DFD84C80050
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 08:31:22 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FDVJxn018643;
	Tue, 15 Mar 2011 13:31:19 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18570-02; Tue, 15 Mar 2011 13:31:15 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FDVCv1018637
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 Mar 2011 13:31:12 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Lu, Lianhao" <lianhao.lu@intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F218AD10FDC@shsmsx502.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D306597332F02CB7@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA95304B58D2@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597332F5FE28@shsmsx501.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F21852820F8@shsmsx502.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597332FC7643@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9530656D87@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597332FC77B4@shsmsx501.ccr.corp.intel.com>
	<4D7ECE4C.6030500@intel.com> ,
	<9AFCD584B0B67B48AE8D8585BE30BA9530656E56@orsmsx504.amr.corp.intel.com>
	<DC74E0187B44084E9AD28300B75DFE302A8B528B@orsmsx504.amr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F218AD10FDC@shsmsx502.ccr.corp.intel.com>
Date: Tue, 15 Mar 2011 13:31:04 +0000
Message-ID: <1300195864.30423.1711.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: autoconf version mismatch on Bernard
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
X-List-Received-Date: Tue, 15 Mar 2011 13:31:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-15 at 18:30 +0800, Lu, Lianhao wrote:
> Hi guys,
> 
> Does anyone see this kind of failure in recent poky build on bernard branch:
> http://autobuilder.pokylinux.org:8010/builders/nightly-toolchain-test/builds/1/steps/shell_5/logs/stdio 
> 
> It seems there is a autoconf version mismatch. Liping used to meet
> once, and "bitbake autoconf-native -c cleanall; bitbake
> autoconf-native" seems get it worked-around. I cannot reproduce this
> bug on my local build machine. 

It looks like something is attempting to autoreconf those packages and
this shouldn't be happening. The toolchain pieces are one of the only
parts of the system we never autoreconf. The question is therefore what
is triggering the autoreconf? Some kind of timestamp problem?

Cheers,

Richard


