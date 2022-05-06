.class public Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;
.super Ljava/lang/Object;
.source "FloatLogoParams.java"


# instance fields
.field private hideLeftLogoResName:Ljava/lang/String;

.field private hideRightLogoResName:Ljava/lang/String;

.field private logoImgUrl:Ljava/lang/String;

.field private logoParams:I

.field private logoResName:Ljava/lang/String;

.field private redPointMargin:I

.field private redPointParams:I

.field private redPointPicResName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x32

    iput v0, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->logoParams:I

    .line 47
    const/4 v0, 0x7

    iput v0, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->redPointParams:I

    .line 52
    const/4 v0, 0x5

    iput v0, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->redPointMargin:I

    return-void
.end method


# virtual methods
.method public getHideLeftLogoResName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->hideLeftLogoResName:Ljava/lang/String;

    return-object v0
.end method

.method public getHideRightLogoResName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->hideRightLogoResName:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoImgUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->logoImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoParams()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->logoParams:I

    return v0
.end method

.method public getLogoResName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->logoResName:Ljava/lang/String;

    return-object v0
.end method

.method public getRedPointMargin()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->redPointMargin:I

    return v0
.end method

.method public getRedPointParams()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->redPointParams:I

    return v0
.end method

.method public getRedPointPicResName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->redPointPicResName:Ljava/lang/String;

    return-object v0
.end method

.method public setHideLeftLogoResName(Ljava/lang/String;)V
    .registers 2
    .param p1, "hideLeftLogoResName"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->hideLeftLogoResName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setHideRightLogoResName(Ljava/lang/String;)V
    .registers 2
    .param p1, "hideRightLogoResName"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->hideRightLogoResName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setLogoImgUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "logoImgUrl"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->logoImgUrl:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setLogoParams(I)V
    .registers 2
    .param p1, "logoParams"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->logoParams:I

    .line 68
    return-void
.end method

.method public setLogoResName(Ljava/lang/String;)V
    .registers 2
    .param p1, "logoResName"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->logoResName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setRedPointMargin(I)V
    .registers 2
    .param p1, "redPointMargin"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->redPointMargin:I

    .line 92
    return-void
.end method

.method public setRedPointParams(I)V
    .registers 2
    .param p1, "redPointParams"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->redPointParams:I

    .line 84
    return-void
.end method

.method public setRedPointPicResName(Ljava/lang/String;)V
    .registers 2
    .param p1, "redPointPicResName"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->redPointPicResName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatLogoParams{logoResName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->logoResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logoImgUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->logoImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hideLeftLogoResName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->hideLeftLogoResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hideRightLogoResName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->hideRightLogoResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logoParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->logoParams:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redPointPicResName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->redPointPicResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redPointParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->redPointParams:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redPointMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->redPointMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
