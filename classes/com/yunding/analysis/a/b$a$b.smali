.class public Lcom/yunding/analysis/a/b$a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunding/analysis/a/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "http://kd-sg.bowinggame.com/"

    const-string v1, "device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yunding/analysis/a/b$a$b;->a:Ljava/lang/String;

    const-string v0, "http://kd-sg.bowinggame.com/"

    const-string v1, "reg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yunding/analysis/a/b$a$b;->b:Ljava/lang/String;

    const-string v0, "http://kd-sg.bowinggame.com/"

    const-string v1, "login_out"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yunding/analysis/a/b$a$b;->c:Ljava/lang/String;

    const-string v0, "http://kd-sg.bowinggame.com/"

    const-string v1, "mission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yunding/analysis/a/b$a$b;->d:Ljava/lang/String;

    const-string v0, "http://kd-sg.bowinggame.com/"

    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yunding/analysis/a/b$a$b;->e:Ljava/lang/String;

    return-void
.end method
