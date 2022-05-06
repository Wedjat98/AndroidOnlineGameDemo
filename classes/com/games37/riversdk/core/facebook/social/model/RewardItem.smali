.class public Lcom/games37/riversdk/core/facebook/social/model/RewardItem;
.super Ljava/lang/Object;
.source "RewardItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/facebook/social/model/RewardItem$RewardState;
    }
.end annotation


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private rewardState:I

.field private rewardText:Ljava/lang/String;

.field private targetCount:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->id:I

    .line 21
    const-string v0, "NAME"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->name:Ljava/lang/String;

    .line 22
    const-string v0, "TARGET"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->targetCount:I

    .line 23
    const-string v0, "REWARD_STATE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->rewardState:I

    .line 24
    const-string v0, "REWARD_STATE_DISPLAY"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->rewardText:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardState()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->rewardState:I

    return v0
.end method

.method public getRewardText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->rewardText:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetCount()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->targetCount:I

    return v0
.end method

.method public setRewardState(I)V
    .registers 2
    .param p1, "rewardState"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->rewardState:I

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RewardItem{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->targetCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rewardState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->rewardState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rewardText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->rewardText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
