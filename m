Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by mx.groups.io with SMTP id smtpd.web11.5181.1662116984123037809
 for <poky@lists.yoctoproject.org>;
 Fri, 02 Sep 2022 04:09:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=jY1Z5H9L;
 spf=pass (domain: gmx.li, ip: 212.227.15.18, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1662116982;
	bh=33Mh/awVKPDhXWmcycQB9ZVwFFOmvChEfavzFkUKyYg=;
	h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
	b=jY1Z5H9Laz4P3rn5aE/iInLzxfPQJ4VBjRZb2teHm44nd7sVLnSbqcUc0gfhkHGnq
	 m0jA3VPZ0AZiW2MxUB7OlUb4cPXfhjDqkmPU7AJV+bTUnFn7U8c+1h3mLlVBaQWlWU
	 n8qK/qXvSBIBnPcWbM3g3RUYseG0EDUJaOURW1Yo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.3.20] ([84.185.255.62]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MHoRA-1oa6Pw1Jf4-00EuS7 for
 <poky@lists.yoctoproject.org>; Fri, 02 Sep 2022 13:09:42 +0200
Message-ID: <1bdd4564-9850-41d6-6122-a8a8a8f5b56a@gmx.li>
Date: Fri, 2 Sep 2022 13:09:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [poky] Patch a kernel module out of tree / pathes?
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
References: <08603763-e89e-f89c-aaf6-dcd6c168a002@gmx.li>
 <ba94777b32584116bb1416b00482c87d@axis.com>
From: "Steve" <star@gmx.li>
In-Reply-To: <ba94777b32584116bb1416b00482c87d@axis.com>
X-Provags-ID: V03:K1:j8V27hTL5+RPXAsp+Cw1WRB9fzZiDoc42IfSC3W79zCqxxDkyIi
 dWtgGFe4dlf+3TzM4azF+ofiSiSPLWjBkK5ks8G193oRiGHttSl1y/RX3xnjj8fE1wWjxMj
 JL8YujI4JKN8DY0ONrceV76ogN5cJZRJsEVUgaK33XxSsuGt4yLH/fsdvrYBtlPuEIhUOi8
 CZO1wesEFKJQcRqwHd0dA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wMEtGFHpzhw=:2LZZ+4g3Ca0PBAfO8mOstM
 BgDP6bktQZjHDZbfyM1PsNRCjGpry5uJrXU4fuMEcrwL6Y1DJqGiW96aF5dwxOGdwrf8ptdQc
 S5wTpLkykB+spKFDzzZrGXoftWxe3hR2KD1+TpsoGnJmkEk0aBkZOoPZROt+oB8+Cvjbwo/iS
 scR5hjZGrrQF2ta8NpO5K7/JakqwI3KecwLQziksVDlO9POvFsxAmOy/oX4pm6HMa8FVjExNZ
 qLhGvh3c5cVcxnEKoDH4bnZIpPLwqcuwkXy8XZmvBmjU1nnes9CM0N26Hdi8/WLd6DfgBjyDD
 fHapbCjENI1s3vndKWE7ESuf9e6Em0GjUA9YygbqausH7C/b9ReYAYdGVcCLZ5sP3AnvMMEf1
 0E7mfKzv6ya49PnzK7kUncVARTDdVeZ3Up25AtbDWxUGnbsIAu+opENx6JMiWi0oqLN+KLprr
 Itm1FPyGWEE2keXh6Ajl1ZCrn+6HYb/vd9KKT2BoF1ZZ7btA8+9mUmXfuAe6AtFcmSKylCDcr
 uyf1jW2NosCdKBDUg4yIz2HGShCiBVdu4ECyePVPdKyZS1uyEkcZqSDSuOHOKFaNkv4M3FsLc
 Z3aLmNxvaeTMn3Zo5i8Sq2cg80VUAEUDidAWF3KhrLUG3YEjbxyWc2Dp6I/M1kzb7Ks9f0rzO
 vqkUfZgKlMNnNr3NN2P6XRVEsYDd5SEIW5+/mmDwv/mRSxWi3ozqUyjE012ixQs5Uxip9eu6h
 hgChekow4x7C/z1NstEK4FI5wfN3CnEaZFBugXMKYwbPnT/egTHkqgcmgxgQXX3mUvpwtvRgP
 K3V6NsXczC3BewDIwjIJfKWWOFmJ7zeFmA34ytIFOqM+pOu8yjyke5ZwGvF948bWI/vY6x9wd
 9DYIfHnqbRufDHxktsmtWMCjN8eZzjaYxxPC6ATRd0oEtAJ+X4LblNC9VihnceWDs2LMERBOR
 cbuK9qlx1FmNIjPRbhDhld3P+4iBJqGAK0mmZVCGsdjAEDBsaY6DDW3FN3bD67TtzjMTHB0hD
 ELzjoweUYN69MhCR7Co1D2ObzTyh0joUEIWUf//0d226hpM5Oyd7M8QCBoRiNBy4meVaHoZNM
 H5Yz9FOlAIvy0hTuq9qNP5iIK3slNgjxJQS1iJdSYtrm4pgFBt5R7wqGC/ItNIvXXbpErxRz7
 V0Az8=
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Am 01.09.22 um 15:24 schrieb Peter Kjellerstedt:
>> -----Original Message-----
>> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Beha=
lf
>> Of Steve
>> Sent: den 31 augusti 2022 15:20
>> To: poky@lists.yoctoproject.org
>> Subject: [poky] Patch a kernel module out of tree / pathes?
>>
>> Hi, strange problem here. A recipe of a vendor (so not mine) builds a
>> kernel module out of tree via Yocto
>> I need to patch that module, but I get error messages.
>>
>> default "S" is:
>> S =3D "$WORKDIR/git/dir1/dir2"
>>
>> The patch has to be applied to git
>>
>> The patch is only applied if my bbappend file gets this line:
>> S =3D "$WORKDIR/git"
>
> You have a couple of options, depending on the patch file:
>
> * If all the changes in the patch is contained within dir1/dir2, then
>    you can add striplevel=3D3 to the URI for the patch, e.g., something
>    like:
>
>      SRC_URI +=3D "file://my-changes.patch;striplevel=3D3"
>
> * Otherwise you can add patchdir=3D../.. to the URI, e.g.:
>
>      SRC_URI +=3D "file://my-changes.patch;patchdir=3D../.."
>
> * Or, if all else fails, you can override S for the patch task:
>
>      S:task-patch =3D "$WORKDIR/git"
>
> The last option affects all patches, so if there already are other
> patches, it is not recommended.
>
>>
>> But in this case compilation goes wrong, which is clear as there is no
>> Makefile in the new "S".
>>
>> But if I leave it as it is, the patch will not applied. It complains
>> about not find the file to patch.
>>
>> So I modified my patchfile to be relative to the location of where the
>> patch file is copied or relative to "S". In the later case it means I
>> have to start with ../../ .
>> But non of the tests worked.
>>
>> How can I at least find out what is the path while patching?
>>
>> If you may I ask why to don't use the devtool? I did, but for some
>> strange reason it doesn't create a recipe in the layer I want.
>> BTW: Is it right to do "devtool update-recipe -a >absolute path of
>> layer< recipe ?
>> I would expect to give a relative name like "meta-mylayer"
>>
>> Hope someone can give me a hint, spending already a day with that.
>>
>> Thanks for your attention.
>
> //Peter
>

Thanks Peter,
it's quite amazing what you can get tweaked here!
I am wondering - would I have a chance to find that by myself (in the
manual)? Once I know that keyword I found it in SRC_URI section...
I did even find another option, wondering about the "quilt" message. I
didn't know quilt before.
But git as a patch tool always starts down at git tree.
So I found that replace the patchtool by git helps with adding
"PATCHTOOL =3D "git" to my bbappend file.
Maybe that is useful for someone else too.
//Arno

