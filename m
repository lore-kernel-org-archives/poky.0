Return-Path: <kpa_info@yahoo.fr>
Received: from nm12-vm0.bullet.mail.ird.yahoo.com
	(nm12-vm0.bullet.mail.ird.yahoo.com [77.238.189.196])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 1C03BE0044A
	for <poky@yoctoproject.org>; Tue, 22 May 2012 00:24:41 -0700 (PDT)
Received: from [77.238.189.56] by nm12.bullet.mail.ird.yahoo.com with NNFMP;
	22 May 2012 07:24:40 -0000
Received: from [217.146.189.74] by tm9.bullet.mail.ird.yahoo.com with NNFMP;
	22 May 2012 07:24:40 -0000
Received: from [127.0.0.1] by smtp154.mail.ird.yahoo.com with NNFMP;
	22 May 2012 07:24:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1337671480; bh=dW8mlslTQL2XcllEbbZTnUvV4rj+aDfV2nd79Gbfkl4=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=YBkLhZcILdmcBOHEDRRu/ZCxScq4qNuTwReIK+HM2f8e1tNWaqHUOd9fl1fOLH9vF5pwdfacUiyKDLAtPVvwxYHOH68KQii+JIgqORRYxTou5dRCT23bp0w02FZOd0VP+0/BvsuJvrNU6bZ1MlQJ4mTOCVqeqWviNvDxMAPGq/s=
X-Yahoo-Newman-Id: 453604.78443.bm@smtp154.mail.ird.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: kLBeiiEVM1nP1slfBss5_IGGLQNuhq08rfstw7MmH.3pJ8W
	MKaXzdedswuwKbz.xITWOegzPSYDdgbfOT3Vy9XNETW.xoP79J6mfSgVyO2L
	Mv69mDQeOTQ5XQhf1Nmq0Qf02vehgW7GqYGSejAMDkYN6GbnNBIA64F6NbZK
	ke9Z6eiWJag1.EQ5_ESjjXsBiLIYVTyjEh7G7nHsUrJY1Ms7QDUklWKHQyfJ
	fasm.DH9KxjhK.Od74XfSNfFyTBaXqXbT41zwUZOnzSWNHIHBIHZI8nvv4KI
	NtYkivSVyVztbEHKEt6SDjzNDe4PinQJcHLTzH8SYyybZZ75pGO1CkV0tKqZ
	JHY5P3AfYAp7XIDxuqwmOU7IppwLN2fVPeNhzmBY.uXX7pehWLH.U9zl3ksJ
	GL7D0r.bI_m1rj_q3SvZFNBPoaE.OBBhHOTD2xdiKsrdXapLONRV3TN92U.X
	P3DulcNqYXmsqcCsrshGclhUgjgRS0uIEsp9RUM8jR4Yhb_pg3WABrMs8Bz8
	I8SRSyvag9cBHhkeke.GBhdiY8pRe
X-Yahoo-SMTP: gXxkLaeswBDA9gtBSIbQ8XWSflp0
Received: from [10.22.2.63] (kpa_info@213.193.97.58 with plain)
	by smtp154.mail.ird.yahoo.com with SMTP; 22 May 2012 00:24:40 -0700 PDT
Message-ID: <4FBB3F35.8090605@yahoo.fr>
Date: Tue, 22 May 2012 09:24:37 +0200
From: Patrick <kpa_info@yahoo.fr>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4FBB36D9.8000504@yahoo.fr>
In-Reply-To: <4FBB36D9.8000504@yahoo.fr>
Subject: Re: Error when building libdbi-sqlite-perl
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
X-List-Received-Date: Tue, 22 May 2012 07:24:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/22/2012 08:48 AM, Patrick wrote:
> Dear all,
>
> I am using Yocto/Poky to build my own ARM based embedded system. In this
> system we use Perl and SQLite and DBI is used to interface Perl to SQLite.
> I was using poky 6.0.1 and everything was building nicely.
>
> Now I have moved my own layer to poky 7.0 and I have a strange error
> when building libdbi-sqlite-perl:
>
>> NOTE: Running task 500 of 721 (ID: 6,
>> poky-denzil-7.0/meta-s/recipes-devtools/libdbi-sqlite-perl/libdbi-sqlite-perl_1.36.bb,
>> do_configure)
>> NOTE: package libdbi-sqlite-perl-1.36-r1: task do_configure: Started
>> ERROR: Function failed: do_configure (see
>> build-sb-dev-7.0/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/libdbi-sqlite-perl-1.36-r1/temp/log.do_configure.27922
>> for further information)
>> ERROR: Logfile of failure stored in:
>> build-sb-dev-7.0/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/libdbi-sqlite-perl-1.36-r1/temp/log.do_configure.27922
>>
>> Log data follows:
>> | ERROR: Function failed: do_configure (see
>> build-sb-dev-7.0/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/libdbi-sqlite-perl-1.36-r1/temp/log.do_configure.27922
>> for further information)
>> | *** Module name IN:
>> build-sb-dev-7.0/tmp/sysroots/sb/usr/lib/perl/5.14.2/Cwd.pm
>> | *** p1: build-sb-dev-7.0/tmp/sysroots/sb/usr/lib/ p3: perl/5.14.2/
>> p5: Cwd.pm
>> | *** Module name OUT:
>> build-sb-dev-7.0/tmp/sysroots/i686-linux/usr/lib/perl-native/perl/5.14.2/Cwd.pm
>>
>> |
>> build-sb-dev-7.0/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/libdbi-sqlite-perl-1.36-r1/temp/run.do_configure.27922:
>> line 85: 27924 Broken pipe yes ''
>> | 27925 Segmentation fault | perl Makefile.PL
>> NOTE: package libdbi-sqlite-perl-1.36-r1: task do_configure: Failed
>> ERROR: Task 6
>> (poky-denzil-7.0/meta-s/recipes-devtools/libdbi-sqlite-perl/libdbi-sqlite-perl_1.36.bb,
>> do_configure) failed with exit code '1'
>
> The recipes is from OE and is attached to this mail.
>
> Any help/idea is welcome !
>
> Patrick
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

I reply myself If I use Perl 5.12.3 from Poky 6.0.1 in Poky 7.0 it work 
nicely. I will try to contact the author of libdbi-sqlite-perl...

Patrick

