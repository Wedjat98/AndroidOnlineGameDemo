.class public Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;
.super Ljava/lang/Object;
.source "RewardRecordItem.java"


# instance fields
.field private date:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rewardType:I

.field private rewardTypeDisplay:Ljava/lang/String;

.field private stateDisplay:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "DATE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->date:Ljava/lang/String;

    .line 38
    const-string v0, "NAME"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->name:Ljava/lang/String;

    .line 39
    const-string v0, "REWARD_TYPE_DISPLAY"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->rewardTypeDisplay:Ljava/lang/String;

    .line 40
    const-string v0, "STATE_DISPLAY"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->stateDisplay:Ljava/lang/String;

    .line 41
    const-string v0, "REWARD_TYPE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->rewardType:I

    .line 42
    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardType()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->rewardType:I

    return v0
.end method

.method public getRewardTypeDisplay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->rewardTypeDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getStateDisplay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->stateDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->date:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->name:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setRewardType(I)V
    .registers 2
    .param p1, "rewardType"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->rewardType:I

    .line 82
    return-void
.end method

.method public setRewardTypeDisplay(Ljava/lang/String;)V
    .registers 2
    .param p1, "rewardTypeDisplay"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->rewardTypeDisplay:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setStateDisplay(Ljava/lang/String;)V
    .registers 2
    .param p1, "stateDisplay"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->stateDisplay:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RewardRecordItem{date=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rewardTypeDisplay=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->rewardTypeDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stateDisplay=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->stateDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rewardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->rewardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
