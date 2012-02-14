Return-Path: <kpa_info@yahoo.fr>
Received: from nm16.bullet.mail.ird.yahoo.com (nm16.bullet.mail.ird.yahoo.com
	[77.238.189.69])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 43788E0059B
	for <poky@yoctoproject.org>; Tue, 14 Feb 2012 02:01:15 -0800 (PST)
Received: from [77.238.189.54] by nm16.bullet.mail.ird.yahoo.com with NNFMP;
	14 Feb 2012 10:01:15 -0000
Received: from [212.82.108.135] by tm7.bullet.mail.ird.yahoo.com with NNFMP;
	14 Feb 2012 10:01:15 -0000
Received: from [127.0.0.1] by omp1040.mail.ird.yahoo.com with NNFMP;
	14 Feb 2012 10:01:15 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 7287.37016.bm@omp1040.mail.ird.yahoo.com
Received: (qmail 22909 invoked by uid 60001); 14 Feb 2012 10:01:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1329213674; bh=sXDYgSp5mR+rmoBuySVUs2qBaNG+108AIEQJTHut1sw=;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=zJbB7RLRT6qMGspGb6L2Z9hv90m/bVt0fkq/deQw7tZ+9MPF8FSADGCSFFMZ/iupWKxyRIFXhUGk4kNqtVN6R5q0OEy0ByaIxODkuWR7DN8DB4y/3SMTbO3yCPJruZvB2+zML8i2Y9J9xwX8koL3aqlj7XARa8Q0v3ehlPxaikA=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.fr;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=028ZgsHxoh4pmippbRWtoVTM60lEyaoMjsiE9Qpn4hYB6G6JWTECNEknNQCGNhzR/lSZwlC/7ZnkzbS1MFYYFpZFvZQSbGR6Y+xB6tVQOVG3mbgYUtVNXzqKS8BufsuV/jlfLOC5ZpKCSQZQKx/upoVRP5PMaWqihHF5U/0T7j0=;
X-YMail-OSG: j2SVpWkVM1lDR8XN.8S5qybzD99DnLW7iHMzq512RumuRoH
	doOy3wy137p0h32TSUhSKbKc7fqA2vvVXEEQ1VWvO68DBMYQukf7aXmxGALr
	lwBHkqd_IunepBk4ObD9IkGX8Ac7PXpwGdANP5ZJqqFosDAAHEjaNCUZGuT7
	udKMIlkyjoAZArwZYo2MinLXBVfllk5FFuEeWagaYoV202aA_HxrEbh6pEiK
	jn8d4SfN.WoOlqZSbgKMYzHgbf59U68hypr2tnz8qn7vvckoj4ggP8RzRdph
	WgMdxmL7GXm8snz4TDd3BbWtVyhaFKlFQ.RlE1z59dgrZYbvxVWSWzz0BAqy
	GcBuJ.4Hw_akXKgpdKZSoi3GNaPtETHopSBd3DNI1_o1aW1Ax2lYIBrn5DkK
	9IYjBr67oZqaY3D8aoxR5elQbTauvwJA9_ltbD6uF_7gNWoVp4oWfevf211f
	DtEMmvHhuFZRD.q7hMzGx5yL9kjHvQz4kd.9.V6Ry5wIX7oF7S3n1WvDMBI3
	FwM6VF6WAn3JgMoCeOk21Y1Zy5UntX1XzzAv_ZGRA5rv8hZJhDWV5kG8zj4u
	Nn7DWCvK0DW7qjtTTzM2..Q--
Received: from [213.193.97.58] by web29004.mail.ird.yahoo.com via HTTP;
	Tue, 14 Feb 2012 10:01:14 GMT
X-Mailer: YahooMailWebService/0.8.116.338427
References: <1329209188.15247.YahooMailNeo@web29001.mail.ird.yahoo.com>
	<857BE142E5399E46B20FD45B9DB8A7BC0FCE74DE@SHSMSX102.ccr.corp.intel.com>
Message-ID: <1329213674.19294.YahooMailNeo@web29004.mail.ird.yahoo.com>
Date: Tue, 14 Feb 2012 10:01:14 +0000 (GMT)
From: Patrick <kpa_info@yahoo.fr>
To: "Lu, Lianhao" <lianhao.lu@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
In-Reply-To: <857BE142E5399E46B20FD45B9DB8A7BC0FCE74DE@SHSMSX102.ccr.corp.intel.com>
MIME-Version: 1.0
Subject: Re : Building sysroot for SDK
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Patrick <kpa_info@yahoo.fr>
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 Feb 2012 10:01:16 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

=0A=0A=0A>Patrick wrote on 2012-02-14:=0A>> Dear list,=0A>> =0A>> I use pok=
y 6.0 to build a complete rootfs for my own target, it's=0A>> working nicel=
y !Now I would like to build a small application SDK for my=0A>> system.=0A=
>> =0A>>=0A I have red carefully the ADT manual and decided to build a tool=
chain =0Awith meta-toolchain. The toolchain generated works properly but so=
me=0A>> libraries and headers are missing.=0A>>=0A For example my target us=
e SQLite built in the rootfs. The sqlite =0Alibrary and the headers files a=
re missing in the toolchain.=0A>> =0A>>=0A I would like to know how to buil=
d the sysroot to add those files in the=0A toolchain or how to add it direc=
tly to the toolchain.=0A>> =0A>Hi Patrick,=0A>=0A>If=0A you want to add mor=
e packages into the sysroot built by meta-toolchain,=0A you may add your ex=
tra packages(i.e. libsqlite3-dev) into the variable =0A"TOOLCHAIN_TARGET_TA=
SK".=A0 =0A>Meta/recipes-core/meta/meta-toolchain-gmae.bb might be an examp=
le of=0A how to add more packages into the target sysroot.=0A>=0A>Best Rega=
rds,=0A>Lianhao=0A>=0A=0AHi Lianhao,=0A=0AThanks for your help ! I have cre=
ated my own meta-toolchain based on meta-toolchain-gmae.bb and it's work ni=
cely.=0AHowever, there remains a small problem. My own meta-toolchain-perso=
.bb file is stored in my own layer meta-perso.=0ATo include the meta-toolch=
ain.bb with require I need to use the full =0Apath to the meta layer: requi=
re =0A../../../meta/recipes-core/meta/meta-toolchain.bb=0AThis is not reall=
y clean, do you know how to point the meta-toolchain.bb file without using =
the full path ?=0A=0AThanks again for your help=0A=0APatrick

