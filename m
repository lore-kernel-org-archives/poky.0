Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 351A34C80AB0
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 04:02:45 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2I92BFO010319
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 18 Mar 2011 02:02:11 -0700 (PDT)
Received: from [128.224.163.157] (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 18 Mar 2011 02:02:10 -0700
Message-ID: <4D831F19.5090802@windriver.com>
Date: Fri, 18 Mar 2011 17:00:09 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1300411762.git.kai.kang@windriver.com>	
	<3404b336e81764d15f546279aa594bd30587836f.1300411762.git.kai.kang@windriver.com>
	<1300412699.30423.2180.camel@rex>
In-Reply-To: <1300412699.30423.2180.camel@rex>
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] msmtp: add link sendmail for lsb command check
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
X-List-Received-Date: Fri, 18 Mar 2011 09:02:45 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2011年03月18日 09:44, Richard Purdie wrote:
> On Fri, 2011-03-18 at 09:34 +0800, Kang Kai wrote:
>> From: Kang Kai<kai.kang@windriver.com>
>>
>> LSB command check will test the exist of sendmail, so make sendmail
>> link to msmtp in order to pass the test.
>>
>> Related to [YOCTO #520]
>>
>> Signed-off-by: Kang Kai<kai.kang@windriver.com>
> Shouldn't this be using the update-alternatives mechanism?
Hi Richard,

I updated the patch, using update-alternatives to make links.
Please help me to check in next letter.

Thanks and Regards,
Kai
>>   meta/recipes-extended/msmtp/msmtp_1.4.23.bb |   12 +++++++++++-
>>   1 files changed, 11 insertions(+), 1 deletions(-)
>>
>> diff --git a/meta/recipes-extended/msmtp/msmtp_1.4.23.bb b/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
>> index cb3d83c..5fc4060 100644
>> --- a/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
>> +++ b/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
>> @@ -6,7 +6,7 @@ SECTION = "console/network"
>>   PRIORITY = "required"
>>   LICENSE = "GPLv3"
>>   DEPENDS = "zlib gnutls"
>> -PR = "r0"
>> +PR = "r1"
>>
>>
>>   #COPYING or Licence
>> @@ -19,3 +19,13 @@ SRC_URI[md5sum] = "5fb7ae88186624cdb125d3efad3fdc16"
>>   SRC_URI[sha256sum] = "269cd30eeb867167c6a599e23399f4fc24196fcdef3bac5b120d806b3b421810"
>>
>>   inherit gettext autotools
>> +
>> +pkg_postinst_${PN} () {
>> +    if [ "x$D" != "x" ] ; then
>> +        exit 1
>> +    fi
>> +
>> +    if [ ! -e ${sbindir}/sendmail ]; then
>> +        ln -sf ${bindir}/msmtp ${sbindir}/sendmail
>> +    fi
>> +}
>


