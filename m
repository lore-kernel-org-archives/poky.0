Return-Path: <chiachiwu@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47287EB64D8
	for <webhook@archiver.kernel.org>; Fri, 16 Jun 2023 14:01:03 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web10.9144.1686924060677262643
 for <poky@lists.yoctoproject.org>;
 Fri, 16 Jun 2023 07:01:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20221208 header.b=OEF4Rnh6;
 spf=pass (domain: google.com, ip: 209.85.160.182, mailfrom: chiachiwu@google.com)
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-3f9a81da5d7so255661cf.0
        for <poky@lists.yoctoproject.org>; Fri, 16 Jun 2023 07:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1686924059; x=1689516059;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=USc7B238xSuKlutdMS7CF7SmpwWkCpfjHG3U8G/jT10=;
        b=OEF4Rnh6j9nYYSkfQT7jk8DnQ4TV+wAaZ3+zse/jYgOLnfFMSlnUg+vcUoDINsbvbn
         2oFlYyMcJcvVhTP8JZ9bcUD4YI+bUQbqER8WmbIKv7hpuYeOYgv0LeVs2NNkmpq93HCd
         opvL9FaxDfceVZLoxCCC0e26UbOUMr/CRiNSsxYPI0igwfckqWwm52LjGFuBNzYI+P3A
         2BJQbcy0nb691/DxruHRM5D7oI0RZHvLUMiN8kkHqDVPSvPusJ4v0VYvDflcfYIoXJJt
         ilwPRwACmZOcgamGIp5/aLixA+/lRYd9PJpKIcQakqzHFzkFnM7N/idMU4F5Bn44hUTD
         ooRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686924059; x=1689516059;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=USc7B238xSuKlutdMS7CF7SmpwWkCpfjHG3U8G/jT10=;
        b=ibC2N8cffFaM82I65nVWHp3xx+Z38LYAAquBV7HnsN9WS6TqQF0IVnEK42Fmv4r2zJ
         ifgmEVE7eM4hA0YGv9Fd1VbcddWcBS4Ym2mXtG23GnhdgEKg+RWaNGDVb5NReNA8Ymt3
         zV+Fcua1pyGrkecbtOx/0DkaZ58pInukp+JZwAez1WN0QPZY+n5f/NIO6txSZsvQjwHu
         AqVn1u5+QuvXZTULwAS2UkjQxpR9UwNRjnVmv3eRiiXQOKkQbe7QnDaWdx2/IdkkJb4R
         yOux9L2CS/kEaOfjoqwIUuwncnKFkJ6Sjcg7lQ+y+l7Iv/v0A377PamSPAh9aEiFaCOS
         7iTQ==
X-Gm-Message-State: AC+VfDzw0VhCuCI65QhS0LBgu6tIWCxmHAmNvdvsgrLSvlsDAF2i3y4U
	YS768kCH3RCVRmgUrPJ4c+S+P+HSAV6aaG4mToxFaw==
X-Google-Smtp-Source: ACHHUZ4Uvj0Pvbpv83V/qo3ZI35OaYAZyjp9sn8OO2HVcQvByUwtS0Jfu55EO6J82PdQdP7CFU0WsAaa7N51YCvbe1E=
X-Received: by 2002:a05:622a:44:b0:3f9:f877:1129 with SMTP id
 y4-20020a05622a004400b003f9f8771129mr469957qtw.29.1686924059381; Fri, 16 Jun
 2023 07:00:59 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1686657637.git.chiachiwu@google.com> <271614cc517d93437c74e12e4d86d2d3149574ea.1686657637.git.chiachiwu@google.com>
 <24b0ee85cc57f65fa622f1a80d51da0b4e3bd72f.camel@linuxfoundation.org>
In-Reply-To: <24b0ee85cc57f65fa622f1a80d51da0b4e3bd72f.camel@linuxfoundation.org>
From: Charlie Wu <chiachiwu@google.com>
Date: Fri, 16 Jun 2023 22:00:48 +0800
Message-ID: <CA+kC3ja3OKmmVxf_zxYrJ4wi4DQdpdLLGzLkFqourbpKDoqYcQ@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/1] devtool: Fix the wrong variable in srcuri_entry
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, ryanoleary@google.com
Content-Type: multipart/alternative; boundary="0000000000005367f905fe3f9de0"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 16 Jun 2023 14:01:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13087

--0000000000005367f905fe3f9de0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

I set up the environment to run "oe-selftest -r devtool" and all test cases
are passed.
I revisited our use case and checked the code again, I think this might be
related to kmeta
<https://docs.yoctoproject.org/4.0.10/kernel-dev/advanced.html?highlight=3D=
kmeta#recipe-space-metadata>
.
Since kmeta is using the folder name, thus the function
"_remove_file_entries" will not remove the .scc and .cfg files here
<https://github.com/openembedded/openembedded-core/blob/master/scripts/lib/=
devtool/standard.py#L1685>
and
put them into the "remaining" list.
And we call the problematic function "srcuri_entry" when the "remaining"
list is not empty.

I think we do not have recipes using kmeta inside openembedded-core, which
makes it hard to add another unit test for this.
Or we have other ways to make the "remaining" list not empty, but I do not
know how.

I will check the guide
<https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded> a=
nd
change to upload the patch to openembedded-core these days.

Thanks,
Charlie


On Wed, Jun 14, 2023 at 4:44=E2=80=AFAM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Tue, 2023-06-13 at 12:56 +0000, Charlie Wu via
> lists.yoctoproject.org wrote:
> > devtool crashes when running "update-recipe" and append changes on the
> recipe.
> > "$ devtool update-recipe -a <layer> <recipe>"
> > Traceback (most recent call last):
> > ...
> > File "/ovss/ovss_quanta/poky/scripts/lib/devtool/standard.py", line
> 1636, in srcuri_entry
> >     return 'file://%s%s' % (basepath, paramstr)
> >                             ^^^^^^^^
> > NameError: cannot access free variable 'basepath' where it is not
> associated with a value in enclosing scope
> >
> > The input variable 'fname' should have the same meaning as the variable
> 'basepath'.
> > Modify the 'fname' to 'basepath' and solve the issue.
> >
> > Signed-off-by: Charlie Wu <chiachiwu@google.com>
> > ---
> >  scripts/lib/devtool/standard.py | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/scripts/lib/devtool/standard.py
> b/scripts/lib/devtool/standard.py
> > index 852672810a..86ca77f718 100644
> > --- a/scripts/lib/devtool/standard.py
> > +++ b/scripts/lib/devtool/standard.py
> > @@ -1629,7 +1629,7 @@ def _update_recipe_patch(recipename, workspace,
> srctree, rd, appendlayerdir, wil
> >      else:
> >          patchdir_params =3D {'patchdir': relpatchdir}
> >
> > -    def srcuri_entry(fname):
> > +    def srcuri_entry(basepath):
> >          if patchdir_params:
> >              paramstr =3D ';' + ';'.join('%s=3D%s' % (k,v) for k,v in
> patchdir_params.items())
> >          else:
>
> Thanks for the patch. As Alex mentions, this needs to go to the OE-Core
> mailing list. I also wondered if we're missing a test case since the
> selftests should catch issues like this?
>
> Could you see if there is something we should add to "oe-selftest -r
> devtool" to catch this issue?
>
> Thanks,
>
> Richard
>

--0000000000005367f905fe3f9de0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Richard,<br><br>I set up the environment to run &quot;o=
e-selftest -r devtool&quot; and all test cases are passed.<br>I revisited o=
ur use case and checked the code again, I think this might be related to <a=
 href=3D"https://docs.yoctoproject.org/4.0.10/kernel-dev/advanced.html?high=
light=3Dkmeta#recipe-space-metadata" target=3D"_blank">kmeta</a>.<div>Since=
 kmeta is using the folder name, thus the function &quot;_remove_file_entri=
es&quot; will not remove the .scc and .cfg files <a href=3D"https://github.=
com/openembedded/openembedded-core/blob/master/scripts/lib/devtool/standard=
.py#L1685">here</a>=C2=A0and put them into the &quot;remaining&quot; list.=
=C2=A0</div><div>And we call the problematic function &quot;srcuri_entry&qu=
ot; when the &quot;remaining&quot; list is not empty.=C2=A0</div><div><br><=
/div><div>I think we do not have recipes using kmeta inside openembedded-co=
re, which makes it hard to add another unit test for this.</div><div>Or we =
have other ways to make the &quot;remaining&quot; list not empty, but I do =
not know how.</div><div><br></div><div>I will check the <a href=3D"https://=
www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded">guide</a>=
=C2=A0and change to upload the patch to openembedded-core these days.</div>=
<div><br></div><div>Thanks,</div><div>Charlie</div><div><br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, J=
un 14, 2023 at 4:44=E2=80=AFAM Richard Purdie &lt;<a href=3D"mailto:richard=
.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfoundati=
on.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">On Tue, 2023-06-13 at 12:56 +0000, Charlie Wu via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> wrote:<br>
&gt; devtool crashes when running &quot;update-recipe&quot; and append chan=
ges on the recipe.<br>
&gt; &quot;$ devtool update-recipe -a &lt;layer&gt; &lt;recipe&gt;&quot;<br=
>
&gt; Traceback (most recent call last):<br>
&gt; ...<br>
&gt; File &quot;/ovss/ovss_quanta/poky/scripts/lib/devtool/standard.py&quot=
;, line 1636, in srcuri_entry<br>
&gt;=C2=A0 =C2=A0 =C2=A0return &#39;file://%s%s&#39; % (basepath, paramstr)=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^^^^^^^^<br>
&gt; NameError: cannot access free variable &#39;basepath&#39; where it is =
not associated with a value in enclosing scope<br>
&gt; <br>
&gt; The input variable &#39;fname&#39; should have the same meaning as the=
 variable &#39;basepath&#39;.<br>
&gt; Modify the &#39;fname&#39; to &#39;basepath&#39; and solve the issue.<=
br>
&gt; <br>
&gt; Signed-off-by: Charlie Wu &lt;<a href=3D"mailto:chiachiwu@google.com" =
target=3D"_blank">chiachiwu@google.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 scripts/lib/devtool/standard.py | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/scripts/lib/devtool/standard.py b/scripts/lib/devtool/sta=
ndard.py<br>
&gt; index 852672810a..86ca77f718 100644<br>
&gt; --- a/scripts/lib/devtool/standard.py<br>
&gt; +++ b/scripts/lib/devtool/standard.py<br>
&gt; @@ -1629,7 +1629,7 @@ def _update_recipe_patch(recipename, workspace, =
srctree, rd, appendlayerdir, wil<br>
&gt;=C2=A0 =C2=A0 =C2=A0 else:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 patchdir_params =3D {&#39;patchdir&#=
39;: relpatchdir}<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 def srcuri_entry(fname):<br>
&gt; +=C2=A0 =C2=A0 def srcuri_entry(basepath):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if patchdir_params:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 paramstr =3D &#39;;&#3=
9; + &#39;;&#39;.join(&#39;%s=3D%s&#39; % (k,v) for k,v in patchdir_params.=
items())<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
<br>
Thanks for the patch. As Alex mentions, this needs to go to the OE-Core<br>
mailing list. I also wondered if we&#39;re missing a test case since the<br=
>
selftests should catch issues like this?<br>
<br>
Could you see if there is something we should add to &quot;oe-selftest -r<b=
r>
devtool&quot; to catch this issue?<br>
<br>
Thanks,<br>
<br>
Richard<br>
</blockquote></div>

--0000000000005367f905fe3f9de0--

