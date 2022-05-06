.class public Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;
.super Ljava/lang/Object;
.source "SocialInfo.java"


# static fields
.field public static final GET_STATE:I = 0x1

.field public static final GOT_STATE:I = 0x2


# instance fields
.field private acceptNum:I

.field private fansPage:Ljava/lang/String;

.field private fbShareStatus:I

.field private inviteMessage:Ljava/lang/String;

.field private inviteTitle:Ljava/lang/String;

.field private lineShareStatus:I

.field private noticeMessage:Ljava/lang/String;

.field private noticeTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "FANS_PAGE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->fansPage:Ljava/lang/String;

    .line 82
    const-string v0, "INVITE_TITLE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->inviteTitle:Ljava/lang/String;

    .line 83
    const-string v0, "INVITE_MESSAGE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->inviteMessage:Ljava/lang/String;

    .line 84
    const-string v0, "NOTICE_TITLE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->noticeTitle:Ljava/lang/String;

    .line 85
    const-string v0, "NOTICE_MESSAGE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->noticeMessage:Ljava/lang/String;

    .line 86
    const-string v0, "ACCEPT_TOTAL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->acceptNum:I

    .line 87
    const-string v0, "FACEBOOK_SHARE_STATUS"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->fbShareStatus:I

    .line 88
    const-string v0, "LINE_SHARE_STATUS"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->lineShareStatus:I

    .line 89
    return-void
.end method


# virtual methods
.method public getAcceptNum()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->acceptNum:I

    return v0
.end method

.method public getFansPage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->fansPage:Ljava/lang/String;

    return-object v0
.end method

.method public getFbShareStatus()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->fbShareStatus:I

    return v0
.end method

.method public getInviteMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->inviteMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getInviteTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->inviteTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLineShareStatus()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->lineShareStatus:I

    return v0
.end method

.method public getNoticeMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->noticeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->noticeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setAcceptNum(I)V
    .registers 2
    .param p1, "acceptNum"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->acceptNum:I

    .line 97
    return-void
.end method

.method public setFBShareStatus(I)V
    .registers 2
    .param p1, "fbShareStatus"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->fbShareStatus:I

    .line 126
    return-void
.end method

.method public setLineShareStatus(I)V
    .registers 2
    .param p1, "lineShareStatus"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->lineShareStatus:I

    .line 134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareContent [fansPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->fansPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inviteTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->inviteTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inviteMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->inviteMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noticeTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->noticeTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noticeMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->noticeMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acceptNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->acceptNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
