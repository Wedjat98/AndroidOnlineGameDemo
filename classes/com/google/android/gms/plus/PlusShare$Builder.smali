.class public Lcom/google/android/gms/plus/PlusShare$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private zzjxy:Z

.field private zzjxz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxy:Z

    :cond_24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addCallToAction(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 8

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxy:Z

    const-string v2, "Must include the launching activity with PlusShare.Builder constructor before setting call-to-action"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    if-eqz p2, :cond_5d

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    move v0, v1

    :goto_15
    const-string v2, "Must provide a call to action URL"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "label"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const-string v2, "url"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    invoke-static {p3}, Lcom/google/android/gms/plus/PlusShare;->zzkw(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "The specified deep-link ID was malformed."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    const-string v2, "deepLinkId"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    iget-object v2, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v3, "com.google.android.apps.plus.CALL_TO_ACTION"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v2, "com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_5d
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public addStream(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/PlusShare$Builder;->setStream(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;

    move-result-object p0

    :goto_10
    return-object p0

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxz:Ljava/util/ArrayList;

    if-nez v1, :cond_1c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxz:Ljava/util/ArrayList;

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxz:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 8

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxz:Ljava/util/ArrayList;

    if-eqz v1, :cond_d6

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxz:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_d6

    move v1, v0

    :goto_f
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    iget-object v4, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v3, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v5, "com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v1, :cond_27

    if-nez v5, :cond_d9

    :cond_27
    move v3, v0

    :goto_28
    const-string v6, "Call-to-action buttons are only available for URLs."

    invoke-static {v3, v6}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    if-eqz v5, :cond_39

    iget-object v3, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v6, "com.google.android.apps.plus.CONTENT_URL"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_dc

    :cond_39
    move v3, v0

    :goto_3a
    const-string v6, "The content URL is required for interactive posts."

    invoke-static {v3, v6}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    if-eqz v5, :cond_55

    iget-object v3, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v5, "com.google.android.apps.plus.CONTENT_URL"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_55

    iget-object v3, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v5, "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_df

    :cond_55
    :goto_55
    const-string v3, "Must set content URL or content deep-link ID to use a call-to-action button."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v3, "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v3, "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/PlusShare;->zzkw(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "The specified deep-link ID was malformed."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    :cond_75
    if-nez v1, :cond_9e

    if-eqz v4, :cond_9e

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxz:Ljava/util/ArrayList;

    if-eqz v0, :cond_e2

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e2

    iget-object v3, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.STREAM"

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxz:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_9b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxz:Ljava/util/ArrayList;

    :cond_9e
    if-eqz v1, :cond_be

    if-nez v4, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxz:Ljava/util/ArrayList;

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ea

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxz:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_be
    :goto_be
    const-string v0, "com.google.android.gms.plus.action.SHARE_INTERNAL_GOOGLE"

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    :goto_d5
    return-object v0

    :cond_d6
    move v1, v2

    goto/16 :goto_f

    :cond_d9
    move v3, v2

    goto/16 :goto_28

    :cond_dc
    move v3, v2

    goto/16 :goto_3a

    :cond_df
    move v0, v2

    goto/16 :goto_55

    :cond_e2
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_9b

    :cond_ea
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_be

    :cond_f2
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10d

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.plus.action.SHARE_GOOGLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    goto :goto_d5

    :cond_10d
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    goto :goto_d5
.end method

.method public setContentDeepLinkId(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/google/android/gms/plus/PlusShare$Builder;->setContentDeepLinkId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentDeepLinkId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 8

    iget-boolean v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxy:Z

    const-string v1, "Must include the launching activity with PlusShare.Builder constructor before setting deep links"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const/4 v0, 0x1

    :goto_e
    const-string v1, "The deepLinkId parameter is required."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "description"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2d

    const-string v1, "thumbnailUrl"

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v2, "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v2, "com.google.android.apps.plus.CONTENT_DEEP_LINK_METADATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_43
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public setContentUrl(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus.CONTENT_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_14
    return-object p0

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v2, "com.google.android.apps.plus.CONTENT_URL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_14
.end method

.method public setRecipients(Lcom/google/android/gms/plus/model/people/Person;Ljava/util/List;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/plus/model/people/Person;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person;",
            ">;)",
            "Lcom/google/android/gms/plus/PlusShare$Builder;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v2, "com.google.android.apps.plus.SENDER_ID"

    if-eqz p1, :cond_24

    invoke-interface {p1}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_27

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_13
    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus.RECIPIENT_IDS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus.RECIPIENT_DISPLAY_NAMES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_23
    return-object p0

    :cond_24
    const-string v0, "0"

    goto :goto_a

    :cond_27
    const/4 v0, 0x0

    goto :goto_13

    :cond_29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/model/people/Person;

    invoke-interface {v0}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/google/android/gms/plus/model/people/Person;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v3, "com.google.android.apps.plus.RECIPIENT_IDS"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus.RECIPIENT_DISPLAY_NAMES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_23
.end method

.method public setStream(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzjxz:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method
