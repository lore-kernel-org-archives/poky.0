Return-Path: <Pasi.Reponen@elektrobit.com>
Received: from smtpgw1fi.elektrobit.com (smtpgw2fi.elektrobit.com
	[194.136.18.129])
	by mx1.pokylinux.org (Postfix) with ESMTP id 145EC4C80479
	for <poky@yoctoproject.org>; Mon,  2 May 2011 00:46:37 -0500 (CDT)
Received: from fioues07.ebgroup.elektrobit.com
	(fioues07.ebgroup.elektrobit.com [172.16.33.117])
	by smtpgw1fi.elektrobit.com (8.13.8/8.13.8) with ESMTP id
	p425kahl030370
	for <poky@yoctoproject.org>; Mon, 2 May 2011 08:46:36 +0300
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Mon, 2 May 2011 08:46:31 +0300
Message-ID: <EF6A1C6B49AA1E42BAAD011E6EED280002529147@fioues07.ebgroup.elektrobit.com>
In-Reply-To: <4DAFF2BE.2050201@intel.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [poky] Problem with local build (using Poky Bernard 5.0)
Thread-Index: AcwAAugTLPGFLArZRIiYMvT6khyg6QIiLM0g
References: <EF6A1C6B49AA1E42BAAD011E6EED2800024D3FAC@fioues07.ebgroup.elektrobit.com>
	<4DAFF2BE.2050201@intel.com>
From: <Pasi.Reponen@elektrobit.com>
To: <poky@yoctoproject.org>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.2.3
	(smtpgw1fi.elektrobit.com [172.16.33.20]);
	Mon, 02 May 2011 08:46:36 +0300 (EEST)
X-Virus-Scanned: at elektrobit.com
X-Scanned-By: MIMEDefang 2.67 on 172.16.33.20
Subject: Re: Problem with local build (using Poky Bernard 5.0)
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
X-List-Received-Date: Mon, 02 May 2011 05:46:39 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi,

My problem is solved, as I noticed that changes in local.conf didn't
take into account after bitbake had been invoked first time. I deleted
my build-directory and reset the build environments and after that the
premirrors worked fine.

Br,

-Pasi=20

-----Original Message-----
From: Saul Wold [mailto:saul.wold@intel.com]=20
Sent: 21 April 2011 12:03
To: Reponen Pasi
Cc: poky@yoctoproject.org
Subject: Re: [poky] Problem with local build (using Poky Bernard 5.0)

On 04/19/2011 11:53 PM, Pasi.Reponen@elektrobit.com wrote:
> Hi,
>
> I'm trying to build locally with Poky Bernard 5.0 (using PREMIRRORS to

> local source package directory and BB_FETCH_PREMIRRORONLY =3D "1"
> configurations). The problem occurs when recipes got environment=20
> variables in SRC_URI (for example $GNU_MIRROR and $PV). In these cases

> Fetcher is unable to fetch source packages locally and raises "network

> access disabled but required" -exception.
>

Do you also have BB_NO_NETWORK =3D "1"?

Do you have all the SCM types setup in PREMIRRORS_prepend, such as svn,
cvs to your local package directory?

Check the original PREMIRRORS in poky.conf to ensure you have all the
SCM types set correctly, also make sure you are using
PREMIRRORS_prepend.

If you continue to have problems, please send your local.conf file that
sets these variable for us to inspect.

Hope this helps you.

Sau!

> Any ideas, is this a bug or have I missed some configuration?
>
> Thanks,
>
> Pasi
>
> ----------------------------------------------------------------
> Please note: This e-mail may contain confidential information intended

> solely for the addressee. If you have received this e-mail in error,=20
> please do not disclose it to anyone, notify the sender promptly, and=20
> delete the message from your system.
> Thank you.
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



----------------------------------------------------------------
Please note: This e-mail may contain confidential information
intended solely for the addressee. If you have received this
e-mail in error, please do not disclose it to anyone, notify
the sender promptly, and delete the message from your system.
Thank you.


