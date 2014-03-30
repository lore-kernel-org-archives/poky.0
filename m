Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8345E00BE3;
	Sun, 30 Mar 2014 12:19:06 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2UJIxr1002351
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 30 Mar 2014 12:18:59 -0700 (PDT)
Received: from server.local (128.224.23.122) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.169.1;
	Sun, 30 Mar 2014 12:18:58 -0700
Message-ID: <53386EFF.9050101@windriver.com>
Date: Sun, 30 Mar 2014 15:22:39 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1396031047.14790.24.camel@ted> <5335D450.1030007@windriver.com>	
	<1396134758.14790.32.camel@ted> <1396183076.14790.47.camel@ted>
In-Reply-To: <1396183076.14790.47.camel@ted>
Cc: yocto-builds <yocto-builds@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	"saul.wold" <saul.wold@intel.com>, Denys Dmytriyenko <denys@ti.com>
Subject: Re: meta-yocto-bsp changes and 3.14
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
X-List-Received-Date: Sun, 30 Mar 2014 19:19:08 -0000
X-Groupsio-MsgNum: 9586
Content-Type: multipart/mixed; boundary="------------050807060104060808000802"

--------------050807060104060808000802
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-03-30, 8:37 AM, Richard Purdie wrote:
> On Sat, 2014-03-29 at 23:12 +0000, Richard Purdie wrote:
>> One remaining issue is that u-boot may be breaking for beaglebone. I'm
>> hoping Denys can help there.
>
> http://autobuilder.yoctoproject.org/main/builders/nightly-arm/builds/21/steps/BuildImages_1/logs/stdio
> http://autobuilder.yoctoproject.org/main/builders/nightly-arm-lsb/builds/21/steps/BuildImages_1/logs/stdio
>

I fixed the merge issue and pushed the change to the 3.10 kernel.
Attached is the SRCREV update.

Bruce

> Cheers,
>
> Richard
>


--------------050807060104060808000802
Content-Type: application/mbox;
	name="0001-linux-yocto-3.10-fix-qemuarm-build-failure.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="0001-linux-yocto-3.10-fix-qemuarm-build-failure.patch"

RnJvbSAxYjcyODY0OWJlM2RjM2RjNzljM2M2NjAwZDcyYmFhZTg0OGUxNzBhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBCcnVjZSBBc2hmaWVsZCA8YnJ1Y2UuYXNoZmllbGRAd2luZHJp
dmVyLmNvbT4KRGF0ZTogU3VuLCAzMCBNYXIgMjAxNCAxNToxNDo0NiAtMDQwMApTdWJqZWN0OiBb
UEFUQ0hdIGxpbnV4LXlvY3RvLzMuMTA6IGZpeCBxZW11YXJtIGJ1aWxkIGZhaWx1cmUKClRoZSB2
My4xMC4yNCBtZXJnZSBjcmVhdGVkIGEgbWVyZ2UgY29uZmxpY3QsIHdoaWNoIHdhcyBub3QgcHJv
cGVybHkKcmVzb2x2ZWQuIEZpeGluZyB0aGUgbWVyZ2UgY29uZmxpY3QgYW5kIGZpeGluZyB0aGUg
YnVpbGQgb2YgcWVtdSBhcm0uCgpTaWduZWQtb2ZmLWJ5OiBCcnVjZSBBc2hmaWVsZCA8YnJ1Y2Uu
YXNoZmllbGRAd2luZHJpdmVyLmNvbT4KLS0tCiBtZXRhL3JlY2lwZXMta2VybmVsL2xpbnV4L2xp
bnV4LXlvY3RvXzMuMTAuYmIgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9tZXRhL3JlY2lwZXMta2VybmVsL2xpbnV4L2xp
bnV4LXlvY3RvXzMuMTAuYmIgYi9tZXRhL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3Rv
XzMuMTAuYmIKaW5kZXggYTAwZDA2MGYwM2ZmLi5jM2RmZDA3ZWUwMjYgMTAwNjQ0Ci0tLSBhL21l
dGEvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG9fMy4xMC5iYgorKysgYi9tZXRhL3Jl
Y2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3RvXzMuMTAuYmIKQEAgLTEwLDcgKzEwLDcgQEAg
S0JSQU5DSF9xZW11eDg2ICA9ICJzdGFuZGFyZC9jb21tb24tcGMvYmFzZSIKIEtCUkFOQ0hfcWVt
dXg4Ni02NCAgPSAic3RhbmRhcmQvY29tbW9uLXBjLTY0L2Jhc2UiCiBLQlJBTkNIX3FlbXVtaXBz
NjQgPSAic3RhbmRhcmQvbXRpLW1hbHRhNjQiCiAKLVNSQ1JFVl9tYWNoaW5lX3FlbXVhcm0gPz0g
IjBlOTllYWJiZTViM2JlYzg1M2FjZTQ5NmY5NDYxMmJjMzc4MDAyNjAiCitTUkNSRVZfbWFjaGlu
ZV9xZW11YXJtID89ICI1MmE2ODA3ZjQyODQ2YzdkMTQ0MmUxMTIyNzcyMmY1OTIyMWZjNjRlIgog
U1JDUkVWX21hY2hpbmVfcWVtdW1pcHMgPz0gImI2YjIwZjQ5ZTlhMTY5YTA2NzJiN2NjMmQ3Yjkz
ZDY2NTJjYTc4NzMiCiBTUkNSRVZfbWFjaGluZV9xZW11cHBjID89ICJkNzFiNzgyNjE1YjgwMmM3
OGUxNTg2NDk0Yjk0ZGQ0MDUzMTc3NWM4IgogU1JDUkVWX21hY2hpbmVfcWVtdXg4NiA/PSAiYzc3
MzliZTEyNjkzMDAwNmUzYmZiZGIyZmIwNzBhOTY3YWJjNWUwOSIKLS0gCjEuOC4xLjIKCg==

--------------050807060104060808000802--
