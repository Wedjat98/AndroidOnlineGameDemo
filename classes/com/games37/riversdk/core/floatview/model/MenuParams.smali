.class public Lcom/games37/riversdk/core/floatview/model/MenuParams;
.super Ljava/lang/Object;
.source "MenuParams.java"


# instance fields
.field private bgResName:Ljava/lang/String;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private itemMargin:I

.field private redPointParams:I

.field private redPointPicResName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lcom/games37/riversdk/core/floatview/model/MenuParams;->redPointParams:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/games37/riversdk/core/floatview/model/MenuParams;->itemMargin:I

    return-void
.end method


# virtual methods
.method public getBgResName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/model/MenuParams;->bgResName:Ljava/lang/String;

    return-object v0
.end method

.method public getClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/model/MenuParams;->clickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getItemMargin()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/games37/riversdk/core/floatview/model/MenuParams;->itemMargin:I

    return v0
.end method

.method public getRedPointParams()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/games37/riversdk/core/floatview/model/MenuParams;->redPointParams:I

    return v0
.end method

.method public getRedPointPicResName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/model/MenuParams;->redPointPicResName:Ljava/lang/String;

    return-object v0
.end method

.method public setBgResName(Ljava/lang/String;)V
    .registers 2
    .param p1, "bgResName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/games37/riversdk/core/floatview/model/MenuParams;->bgResName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/games37/riversdk/core/floatview/model/MenuParams;->clickListener:Landroid/view/View$OnClickListener;

    .line 76
    return-void
.end method

.method public setItemMargin(I)V
    .registers 2
    .param p1, "itemMargin"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/games37/riversdk/core/floatview/model/MenuParams;->itemMargin:I

    .line 68
    return-void
.end method

.method public setRedPointParams(I)V
    .registers 2
    .param p1, "redPointParams"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/games37/riversdk/core/floatview/model/MenuParams;->redPointParams:I

    .line 60
    return-void
.end method

.method public setRedPointPicResName(Ljava/lang/String;)V
    .registers 2
    .param p1, "redPointPicResName"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/games37/riversdk/core/floatview/model/MenuParams;->redPointPicResName:Ljava/lang/String;

    .line 52
    return-void
.end method
