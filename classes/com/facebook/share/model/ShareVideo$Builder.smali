.class public final Lcom/facebook/share/model/ShareVideo$Builder;
.super Lcom/facebook/share/model/ShareMedia$Builder;
.source "ShareVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareMedia$Builder",
        "<",
        "Lcom/facebook/share/model/ShareVideo;",
        "Lcom/facebook/share/model/ShareVideo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private localUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/facebook/share/model/ShareMedia$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/facebook/share/model/ShareVideo$Builder;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideo$Builder;->localUrl:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareVideo;
    .registers 3

    .prologue
    .line 101
    new-instance v0, Lcom/facebook/share/model/ShareVideo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareVideo;-><init>(Lcom/facebook/share/model/ShareVideo$Builder;Lcom/facebook/share/model/ShareVideo;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideo$Builder;->build()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMedia$Builder;
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/share/model/ShareVideo;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareVideo$Builder;->readFrom(Lcom/facebook/share/model/ShareVideo;)Lcom/facebook/share/model/ShareVideo$Builder;

    move-result-object v0

    return-object v0
.end method

.method readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareVideo$Builder;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 114
    .line 115
    const-class v0, Lcom/facebook/share/model/ShareVideo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareVideo;

    .line 114
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareVideo$Builder;->readFrom(Lcom/facebook/share/model/ShareVideo;)Lcom/facebook/share/model/ShareVideo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/ShareVideo;)Lcom/facebook/share/model/ShareVideo$Builder;
    .registers 4
    .param p1, "model"    # Lcom/facebook/share/model/ShareVideo;

    .prologue
    .line 106
    if-nez p1, :cond_3

    .line 109
    .end local p0    # "this":Lcom/facebook/share/model/ShareVideo$Builder;
    :goto_2
    return-object p0

    .restart local p0    # "this":Lcom/facebook/share/model/ShareVideo$Builder;
    :cond_3
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareMedia$Builder;->readFrom(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMedia$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareVideo$Builder;

    .line 110
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareVideo$Builder;->setLocalUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareVideo$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public setLocalUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareVideo$Builder;
    .registers 2
    .param p1, "localUrl"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    iput-object p1, p0, Lcom/facebook/share/model/ShareVideo$Builder;->localUrl:Landroid/net/Uri;

    .line 96
    return-object p0
.end method
