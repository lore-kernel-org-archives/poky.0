Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9759E00B5F; Tue,  5 Dec 2017 09:45:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FE63E00AD7
	for <poky@yoctoproject.org>; Tue,  5 Dec 2017 09:45:29 -0800 (PST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	vB5HjNbN027771
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Tue, 5 Dec 2017 17:45:24 GMT
Message-ID: <1512495923.19417.68.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Mardegan, Alberto" <AMardegan@luxoft.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Tue, 05 Dec 2017 17:45:23 +0000
In-Reply-To: <52d725e1-221d-43c0-5a81-42100be4f7cd@luxoft.com>
References: <52d725e1-221d-43c0-5a81-42100be4f7cd@luxoft.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Subject: Re: Error when running testimage
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
X-List-Received-Date: Tue, 05 Dec 2017 17:45:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-12-05 at 16:56 +0000, Mardegan, Alberto wrote:
> Hi all!
>   I'm getting this error while running bitbake -c testimage
> <myimage>:
> 
> =====================
> OERuntimeTestContextExecutor.getControllerModule(target_type,
> target_modules_path)
>  *** 0112:                target = controller(logger, target_ip,
> server_ip, **kwargs)
>      0113:            except ImportError as e:
>      0114:                raise TypeError("Failed to import %s from
> available controller modules" % target_type)
>      0115:
>      0116:        return target
> Exception: TypeError: __init__() got an unexpected keyword argument
> 'machine'
> =====================
> 
> Full logs here: http://paste.ubuntu.com/26119631/
> 
> Any ideas on what's going wrong?

Which MACHINE is this for? It sounds as if the system has no idea how
to connect to the machine being tested (e.g. it doesn't know if qemu
can be used or what the qemu parameters might be, or if it needs to
connect remotely to a machine).

The error message/failure mode certainly needs improving if that is the
issue...

Cheers,

Richard

