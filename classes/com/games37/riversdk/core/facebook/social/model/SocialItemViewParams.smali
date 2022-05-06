.class public Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;
.super Ljava/lang/Object;
.source "SocialItemViewParams.java"


# instance fields
.field private itemCheckState:Z

.field private itemIconRes:Ljava/lang/String;

.field private itemNameRes:Ljava/lang/String;

.field private showRedpoint:Z

.field private viewTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "viewTag"    # Ljava/lang/String;
    .param p2, "itemIconRes"    # Ljava/lang/String;
    .param p3, "itemNameRes"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->viewTag:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->itemIconRes:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->itemNameRes:Ljava/lang/String;

    .line 40
    iput-boolean v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->itemCheckState:Z

    .line 41
    iput-boolean v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->showRedpoint:Z

    .line 42
    return-void
.end method


# virtual methods
.method public getItemCheckState()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->itemCheckState:Z

    return v0
.end method

.method public getItemIconRes()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->itemIconRes:Ljava/lang/String;

    return-object v0
.end method

.method public getItemNameRes()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->itemNameRes:Ljava/lang/String;

    return-object v0
.end method

.method public getViewTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->viewTag:Ljava/lang/String;

    return-object v0
.end method

.method public isShowRedpoint()Z
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->showRedpoint:Z

    return v0
.end method

.method public setItemCheckState(Z)V
    .registers 2
    .param p1, "itemCheckState"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->itemCheckState:Z

    .line 74
    return-void
.end method

.method public setItemIcon(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemIconRes"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->itemIconRes:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setItemNameRes(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemNameRes"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->itemNameRes:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setShowRedpoint(Z)V
    .registers 2
    .param p1, "showRedpoint"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->showRedpoint:Z

    .line 82
    return-void
.end method

.method public setViewTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "viewTag"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->viewTag:Ljava/lang/String;

    .line 50
    return-void
.end method
