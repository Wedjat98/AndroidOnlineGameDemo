.class public final Lcom/iflytek/common/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iflytek/cloud/thirdparty/aQ;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/iflytek/common/c;->a()Lcom/iflytek/cloud/thirdparty/aQ;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/a;->a:Lcom/iflytek/cloud/thirdparty/aQ;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/aL;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/iflytek/common/a;->a:Lcom/iflytek/cloud/thirdparty/aQ;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/iflytek/common/a;->a:Lcom/iflytek/cloud/thirdparty/aQ;

    invoke-interface {v0, p0}, Lcom/iflytek/cloud/thirdparty/aQ;->a(Landroid/content/Context;)V

    :cond_c
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/aL;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/common/a;->a:Lcom/iflytek/cloud/thirdparty/aQ;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/iflytek/common/a;->a:Lcom/iflytek/cloud/thirdparty/aQ;

    invoke-interface {v0, p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/aQ;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public static a(Z)V
    .registers 1

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/aT;->a(Z)V

    return-void
.end method
