.class public final Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;
.super Ljava/lang/Object;
.source "FloatLogo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/floatview/view/FloatLogo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static floatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 247
    new-instance v0, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    invoke-direct {v0}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->floatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/games37/riversdk/core/floatview/view/FloatLogo;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    new-instance v0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;

    sget-object v1, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->floatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;-><init>(Landroid/content/Context;Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;Lcom/games37/riversdk/core/floatview/view/FloatLogo$1;)V

    return-object v0
.end method

.method public setHideLeftLogoResName(Ljava/lang/String;)Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;
    .registers 3
    .param p1, "hideLeftLogoResName"    # Ljava/lang/String;

    .prologue
    .line 280
    sget-object v0, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->floatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->setHideLeftLogoResName(Ljava/lang/String;)V

    .line 281
    return-object p0
.end method

.method public setHideRightLogoResName(Ljava/lang/String;)Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;
    .registers 3
    .param p1, "hideRightLogoResName"    # Ljava/lang/String;

    .prologue
    .line 285
    sget-object v0, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->floatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->setHideRightLogoResName(Ljava/lang/String;)V

    .line 286
    return-object p0
.end method

.method public setLogoImgUrl(Ljava/lang/String;)Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;
    .registers 3
    .param p1, "logoUrl"    # Ljava/lang/String;

    .prologue
    .line 255
    sget-object v0, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->floatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->setLogoImgUrl(Ljava/lang/String;)V

    .line 256
    return-object p0
.end method

.method public setLogoParams(I)Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;
    .registers 3
    .param p1, "logoParams"    # I

    .prologue
    .line 260
    sget-object v0, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->floatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->setLogoParams(I)V

    .line 261
    return-object p0
.end method

.method public setLogoResName(Ljava/lang/String;)Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;
    .registers 3
    .param p1, "logoResName"    # Ljava/lang/String;

    .prologue
    .line 250
    sget-object v0, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->floatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->setLogoResName(Ljava/lang/String;)V

    .line 251
    return-object p0
.end method

.method public setRedPointMargin(I)Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;
    .registers 3
    .param p1, "redPointMargin"    # I

    .prologue
    .line 275
    sget-object v0, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->floatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->setRedPointMargin(I)V

    .line 276
    return-object p0
.end method

.method public setRedPointParams(I)Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;
    .registers 3
    .param p1, "redPointParams"    # I

    .prologue
    .line 270
    sget-object v0, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->floatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->setRedPointParams(I)V

    .line 271
    return-object p0
.end method

.method public setRedPointPicResName(Ljava/lang/String;)Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;
    .registers 3
    .param p1, "redPointPicResName"    # Ljava/lang/String;

    .prologue
    .line 265
    sget-object v0, Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;->floatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->setRedPointPicResName(Ljava/lang/String;)V

    .line 266
    return-object p0
.end method
