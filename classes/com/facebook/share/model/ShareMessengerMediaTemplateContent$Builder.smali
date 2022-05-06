.class public Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "ShareMessengerMediaTemplateContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder",
        "<",
        "Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;",
        "Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private attachmentId:Ljava/lang/String;

.field private button:Lcom/facebook/share/model/ShareMessengerActionButton;

.field private mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

.field private mediaUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->attachmentId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->mediaUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$5(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerActionButton;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
    .registers 3

    .prologue
    .line 179
    new-instance v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;-><init>(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->build()Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;
    .registers 4
    .param p1, "content"    # Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    .prologue
    .line 166
    if-nez p1, :cond_3

    .line 169
    .end local p0    # "this":Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;
    :goto_2
    return-object p0

    .line 170
    .restart local p0    # "this":Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;
    :cond_3
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;

    .line 171
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaType()Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->setMediaType(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getAttachmentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->setAttachmentId(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->setMediaUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->setButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public setAttachmentId(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;
    .registers 2
    .param p1, "attachmentId"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->attachmentId:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public setButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;
    .registers 2
    .param p1, "button"    # Lcom/facebook/share/model/ShareMessengerActionButton;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    .line 161
    return-object p0
.end method

.method public setMediaType(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;
    .registers 2
    .param p1, "mediaType"    # Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    .line 133
    return-object p0
.end method

.method public setMediaUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;
    .registers 2
    .param p1, "mediaUrl"    # Landroid/net/Uri;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->mediaUrl:Landroid/net/Uri;

    .line 153
    return-object p0
.end method
