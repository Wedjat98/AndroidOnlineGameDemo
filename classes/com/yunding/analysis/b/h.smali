.class public Lcom/yunding/analysis/b/h;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "==========================================================================="

    sput-object v0, Lcom/yunding/analysis/b/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yunding/analysis/a/a;->A()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yunding/analysis/a/a;->A()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method
