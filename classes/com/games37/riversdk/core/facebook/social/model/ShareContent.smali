.class public Lcom/games37/riversdk/core/facebook/social/model/ShareContent;
.super Ljava/lang/Object;
.source "ShareContent.java"


# instance fields
.field private description:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private thumb:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "TITLE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;->title:Ljava/lang/String;

    .line 24
    const-string v0, "LINK"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;->link:Ljava/lang/String;

    .line 25
    const-string v0, "THUMB"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;->thumb:Ljava/lang/String;

    .line 26
    const-string v0, "DESCRIPTION"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;->description:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;->title:Ljava/lang/String;

    return-object v0
.end method
