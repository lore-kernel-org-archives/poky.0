Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C6614C81260
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 01:53:24 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jan 2011 23:53:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,391,1291622400"; d="scan'208";a="652038034"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 27 Jan 2011 23:53:23 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 28 Jan 2011 15:52:40 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 28 Jan 2011 15:52:39 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Fri, 28 Jan 2011 15:52:37 +0800
Thread-Topic: [poky] [PATCH 2/3] rm_work.bbclass: handle stamp files while
	doing rm_work
Thread-Index: Acu+E0qpwBr935sxRJCN4XhU7oMT3AAeBPdg
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31D8EFCD@shsmsx501.ccr.corp.intel.com>
References: <cover.1296115229.git.dongxiao.xu@intel.com>
	<7a0a83046957272a5575afafe615a47c57eb5b85.1296115229.git.dongxiao.xu@intel.com>
	<1296126803.27814.7071.camel@rex>
In-Reply-To: <1296126803.27814.7071.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 2/3] rm_work.bbclass: handle stamp files while doing rm_work
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
X-List-Received-Date: Fri, 28 Jan 2011 07:53:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Richard Purdie wrote:
> On Thu, 2011-01-27 at 16:04 +0800, Dongxiao Xu wrote:
>> diff --git a/meta/classes/rm_work.bbclass
>> b/meta/classes/rm_work.bbclass index 260ecb0..a151f4c 100644
>> --- a/meta/classes/rm_work.bbclass
>> +++ b/meta/classes/rm_work.bbclass
>> @@ -26,6 +26,23 @@ do_rm_work () {
>>      # Need to add pseudo back or subsqeuent work in this workdir
>>      # might fail since setscene may not rerun to recreate it    =20
>> mkdir ${WORKDIR}/pseudo/ +
>> +    rm -rf `ls ${STAMP}* | grep -v sigdata | grep -v
>> + do_populate_sysroot | grep -v do_package`
>> ${STAMP}.do_package_write + +    for stamp in `ls ${STAMP}* | grep
>> do_package_write_* | grep -v setscene` +    do +        mv $stamp
>> $stamp\_setscene +    done
>> +
>> +    for task in do_populate_sysroot do_package
>> +    do
>> +        if [ -e ${STAMP}.$task ]; then
>> +            mv ${STAMP}.$task ${STAMP}.$task\_setscene
>> +        elif [ -e ${STAMP}.$task.${MACHINE} ]; then
>> +            mv ${STAMP}.$task.${MACHINE}
>> ${STAMP}.$task\_setscene.${MACHINE} +        fi +    done
>> +
>>  }
>>  addtask rm_work after do_${RMWORK_ORIG_TASK}
>=20
> This is the right approach, however, if I set BB_SIGNATURE_HANDLER =3D
> "basichash" it will break since the stamps then look like:=20
>=20
> ncurses-5.7-r0.do_populate_sysroot.59a5b1c1ce0a1bab23be44c27ba308a5.qemux=
86
>=20
> and also, if we add new tasks to sstate, this code would then need to
> be updated with the new tasknames.=20
>=20
> I ended up writing
> http://git.pokylinux.org/cgit.cgi/poky/commit/?id=3De8e9f56057f3732d25503=
75a23573ab7231eac22
> which I merged into master to address the problem since its breaking
> the autobuilder and people's builds out there. I'd have thought there
> would be a neater way to do this but I can't find one at the moment.
> Any improvements anyone can see are welcome.

Thanks for your fix, I am not aware of such stamp format, thus it's not cov=
ered in my previous fix.

Thanks,
Dongxiao
  =20
>=20
> Cheers,
>=20
> Richard


