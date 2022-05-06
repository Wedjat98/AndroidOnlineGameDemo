.class public Lcom/games37/riversdk/common/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isVaildcontext(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_e

    check-cast p0, Landroid/app/Activity;

    .line 62
    .end local p0    # "context":Landroid/content/Context;
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static toastByData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0}, Lcom/games37/riversdk/common/utils/ToastUtil;->isVaildcontext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 26
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 28
    :cond_14
    return-void
.end method

.method public static toastByID(Landroid/content/Context;I)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 37
    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    invoke-static {p0}, Lcom/games37/riversdk/common/utils/ToastUtil;->isVaildcontext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 38
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    :cond_11
    return-void
.end method

.method public static toastByResName(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0}, Lcom/games37/riversdk/common/utils/ToastUtil;->isVaildcontext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 50
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53
    :cond_18
    return-void
.end method
