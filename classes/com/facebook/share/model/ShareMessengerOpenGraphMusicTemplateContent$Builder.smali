.class public Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "ShareMessengerOpenGraphMusicTemplateContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder",
        "<",
        "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;",
        "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private button:Lcom/facebook/share/model/ShareMessengerActionButton;

.field private url:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->url:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerActionButton;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;
    .registers 3

    .prologue
    .line 127
    new-instance v0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;-><init>(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->build()Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;
    .registers 4
    .param p1, "content"    # Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    .prologue
    .line 116
    if-nez p1, :cond_3

    .line 119
    .end local p0    # "this":Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;
    :goto_2
    return-object p0

    .line 120
    .restart local p0    # "this":Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;
    :cond_3
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;

    .line 121
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->setUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->setButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public setButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;
    .registers 2
    .param p1, "button"    # Lcom/facebook/share/model/ShareMessengerActionButton;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    .line 111
    return-object p0
.end method

.method public setUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;
    .registers 2
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->url:Landroid/net/Uri;

    .line 103
    return-object p0
.end method
