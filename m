Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 66DFB4C80044
	for <poky@lists.pokylinux.org>; Wed, 10 Nov 2010 08:09:53 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id DF57A16609B7; Wed, 10 Nov 2010 07:09:52 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4942D16609B2;
	Wed, 10 Nov 2010 07:09:52 -0700 (MST)
Message-ID: <4CDAA7B0.1070903@mlbassoc.com>
Date: Wed, 10 Nov 2010 07:09:52 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <4CD29C94.4070301@mlbassoc.com> <1289396650.1272.299.camel@rex>
In-Reply-To: <1289396650.1272.299.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: timestamp overkill?
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
X-List-Received-Date: Wed, 10 Nov 2010 14:09:53 -0000
X-Groupsio-MsgNum: 130
Content-Type: multipart/mixed; boundary="------------020507060907070401090808"

--------------020507060907070401090808
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/10/2010 06:44 AM, Richard Purdie wrote:
> On Thu, 2010-11-04 at 05:44 -0600, Gary Thomas wrote:
>> I just noticed that there are two identical functions in image.bbclass
>> to set/update the image timestamp.  Why?  Left over from a previous era?
>>
>> $ find meta* -name "*.bb*" -or -name "*.inc" | xargs grep create_etc_timestamp
>> meta/classes/image.bbclass:create_etc_timestamp() {
>> meta/classes/image.bbclass:# export the zap_root_password, create_etc_timestamp and remote_init_link
>> meta/classes/image.bbclass:EXPORT_FUNCTIONS zap_root_password create_etc_timestamp remove_init_link do_rootfs make_zimage_symlink_relative set_image_autologin
>> rootfs_update_timestamp rootfs_no_x_startup
>>
>> Notice that 'create_etc_timestamp' does not seem to be used by
>> any recipe.  Perhaps it should be removed?
>
> The one that is unused should probably be removed. Please file a bug
> and/or submit a patch!

Attached.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------020507060907070401090808
Content-Type: text/plain;
 name="0001-Remove-superfluous-create_etc_timestamp-function.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename*0="0001-Remove-superfluous-create_etc_timestamp-function.patch"

RnJvbSA3OGIwZDZjNWExMmQ1M2FmYjEzYTIwZTUxZTE2NTNiZDU3MmM1MmM2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBHYXJ5IFRob21hcyA8Z2FyeUBtbGJhc3NvYy5jb20+CkRhdGU6
IFdlZCwgMTAgTm92IDIwMTAgMDc6MDg6NDggLTA3MDAKU3ViamVjdDogW1BBVENIXSBSZW1vdmUg
c3VwZXJmbHVvdXMgJ2NyZWF0ZV9ldGNfdGltZXN0YW1wKCknIGZ1bmN0aW9uIC0gc2VlbXMgdG8g
YmUgYSBkdXBsaWNhdGUgb2YgJ3Jvb3Rmc191cGRhdGVfdGltZXN0YW1wKCknCgpTaWduZWQtb2Zm
LWJ5OiBHYXJ5IFRob21hcyA8Z2FyeUBtbGJhc3NvYy5jb20+Ci0tLQogbWV0YS9jbGFzc2VzL2lt
YWdlLmJiY2xhc3MgfCAgICA0IC0tLS0KIDEgZmlsZXMgY2hhbmdlZCwgMCBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL21ldGEvY2xhc3Nlcy9pbWFnZS5iYmNsYXNz
IGIvbWV0YS9jbGFzc2VzL2ltYWdlLmJiY2xhc3MKaW5kZXggNGJlNTEwMy4uMDIyMmJhNiAxMDA2
NDQKLS0tIGEvbWV0YS9jbGFzc2VzL2ltYWdlLmJiY2xhc3MKKysrIGIvbWV0YS9jbGFzc2VzL2lt
YWdlLmJiY2xhc3MKQEAgLTE4MiwxMCArMTgyLDYgQEAgemFwX3Jvb3RfcGFzc3dvcmQgKCkgewog
CW12ICR7SU1BR0VfUk9PVEZTfS9ldGMvcGFzc3dkLm5ldyAke0lNQUdFX1JPT1RGU30vZXRjL3Bh
c3N3ZAogfSAKIAotY3JlYXRlX2V0Y190aW1lc3RhbXAoKSB7Ci0JZGF0ZSAtdSArJTJtJTJkJTJI
JTJNJTRZID4ke0lNQUdFX1JPT1RGU30vZXRjL3RpbWVzdGFtcAotfQotCiAjIFR1cm4gYW55IHN5
bWJvbGljIC9zYmluL2luaXQgbGluayBpbnRvIGEgZmlsZQogcmVtb3ZlX2luaXRfbGluayAoKSB7
CiAJaWYgWyAtaCAke0lNQUdFX1JPT1RGU30vc2Jpbi9pbml0IF07IHRoZW4KLS0gCjEuNi4yLjUK
Cg==

--------------020507060907070401090808--
