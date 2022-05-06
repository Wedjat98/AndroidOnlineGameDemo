.class public Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;
.super Ljava/lang/Object;
.source "FunctionInfo.java"


# instance fields
.field private device:Ljava/lang/String;

.field private function_lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sdk_icon:Ljava/lang/String;

.field private sdk_state:Ljava/lang/String;

.field private sdk_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getDevice()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getFunction_lists()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->function_lists:Ljava/util/List;

    return-object v0
.end method

.method public getSdk_icon()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->sdk_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getSdk_state()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->sdk_state:Ljava/lang/String;

    return-object v0
.end method

.method public getSdk_url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->sdk_url:Ljava/lang/String;

    return-object v0
.end method

.method public setDevice(Ljava/lang/String;)V
    .registers 2
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->device:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setFunction_lists(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "function_lists":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;>;"
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->function_lists:Ljava/util/List;

    .line 67
    return-void
.end method

.method public setSdk_icon(Ljava/lang/String;)V
    .registers 2
    .param p1, "sdk_icon"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->sdk_icon:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setSdk_state(Ljava/lang/String;)V
    .registers 2
    .param p1, "sdk_state"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->sdk_state:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setSdk_url(Ljava/lang/String;)V
    .registers 2
    .param p1, "sdk_url"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->sdk_url:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FunctionInfo{device=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->device:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdk_url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->sdk_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdk_state=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->sdk_state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdk_icon=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->sdk_icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", function_lists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->function_lists:Ljava/util/List;

    if-nez v0, :cond_62

    const-string v0, "null"

    .line 76
    :goto_53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    return-object v0

    :cond_62
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->function_lists:Ljava/util/List;

    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_53
.end method
