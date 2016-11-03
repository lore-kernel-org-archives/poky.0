Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8313E00C59; Thu,  3 Nov 2016 06:47:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_50,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4959]
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Thu, 03 Nov 2016 06:47:19 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E1A1E00C43
	for <poky@yoctoproject.org>; Thu,  3 Nov 2016 06:47:19 -0700 (PDT)
Received: from [62.225.157.196] by 3capp-gmx-bs37.server.lan (via HTTP);
	Thu, 3 Nov 2016 14:42:16 +0100
MIME-Version: 1.0
Message-ID: <trinity-418a027c-e61d-4fde-8986-947a0b719d0c-1478180535978@3capp-gmx-bs37>
From: star@gmx.li
To: poky@yoctoproject.org
Date: Thu, 3 Nov 2016 14:42:16 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:9jSJlA1ZXGxxJAwdBIUM1ua7RCgqX2f1QSk8YcKtpk/
	C0bqT7TfF4BuP0s801sBfQosqL0rFXX/OBVOIbZEleEdg40xoJ
	Ejj64V1BkuQ4rTwyW4u3g1EsWx9oJ2KznrXz0IOLGK2MdkwM3R
	MTGQob3OfJMLXALdHx+pdPhCNTnWgNaHpFsD6Ok2YoozSkyVqP
	CCnLwjH249yfn1o7RctfPWNbn8YtPiRHkHO+/bXEdkExWrE0tX
	KZFPW7QbeOGLYXnPFPemTx/SwPACLqdvQZtuIWhHYAEpYTZnFD LhAcXs=
X-UI-Out-Filterresults: notjunk:1;V01:K0:XIHjo5lNmcM=:/IVXHdT5E9e3zvAo0DqoJZ
	S8KgN6/dGGrmDdG93cwqREr7wdOeg7YqGyMjt4u4wHwaMD6TFjVBoCpxZH2Z5w8JdnO63L9/M
	q0TOBlF1OBOPGiUiL3kt4Mmvc12v8iN1KTBYoKGSLK87V4TfUk1djGGXdGA1vtg2oMx6U9mhs
	c+UwVVe/cRLvMRZoMFgXdIReSwl/WmTyTTiZh16mAM5CmhZ1bQsOInRct3/uixF7Pu1spvi3V
	eVj5CzvSsDzdQf/+cWlGP9IpRM/3j4ZkT+cS3pJBj+VjuxVGNk538O7R87kPmAvweD3KAk6wP
	/laK0qOd6s7tvJBaxAw+b8rvcnnBNT231XO3mW4KjT21EeAKwwhsP1NoQc+oiy+lhAYoxjjEn
	1mOW/aqVNtt85dHYO/x6xh3/gPoKfJbr9srM51ji0Uo+BR2YsmxQ2cWyaeV5vdJrSgb9vgn95
	uqi7vuv6oA==
Subject: tcf-agent
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
X-List-Received-Date: Thu, 03 Nov 2016 13:47:24 -0000
Content-Type: text/plain; charset=UTF-8

Most features of TCF are commented out with this:

# They don't build on ARM and we don't need them actually.
CFLAGS += "-DSERVICE_RunControl=0 -DSERVICE_Breakpoints=0 \
    -DSERVICE_Memory=0 -DSERVICE_Registers=0 -DSERVICE_MemoryMap=0 \
    -DSERVICE_StackTrace=0 -DSERVICE_Symbols=0 -DSERVICE_LineNumbers=0 \
    -DSERVICE_Expressions=0"

This is since years - it it really true that TCF will not work with ARM?
What are the alternatives, if so?

Best regards
Arno

