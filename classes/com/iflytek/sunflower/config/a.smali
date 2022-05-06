.class public Lcom/iflytek/sunflower/config/a;
.super Ljava/lang/Object;


# static fields
.field public static a:J

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Z

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/Long;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/Boolean;

.field public static j:Ljava/lang/Boolean;

.field public static k:Ljava/lang/Boolean;

.field public static l:I

.field public static m:I

.field public static n:Ljava/lang/Boolean;

.field public static o:Ljava/lang/String;

.field public static p:I

.field public static q:I

.field public static r:J

.field public static s:J

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/iflytek/sunflower/config/a;->a:J

    const-string v0, ""

    sput-object v0, Lcom/iflytek/sunflower/config/a;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/iflytek/sunflower/config/a;->c:Ljava/lang/String;

    sput-boolean v2, Lcom/iflytek/sunflower/config/a;->d:Z

    const-string v0, ""

    sput-object v0, Lcom/iflytek/sunflower/config/a;->e:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/iflytek/sunflower/config/a;->f:Ljava/lang/String;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/iflytek/sunflower/config/a;->g:Ljava/lang/Long;

    const-string v0, ""

    sput-object v0, Lcom/iflytek/sunflower/config/a;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/iflytek/sunflower/config/a;->i:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/iflytek/sunflower/config/a;->j:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/iflytek/sunflower/config/a;->k:Ljava/lang/Boolean;

    sput v2, Lcom/iflytek/sunflower/config/a;->l:I

    sput v2, Lcom/iflytek/sunflower/config/a;->m:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/iflytek/sunflower/config/a;->n:Ljava/lang/Boolean;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/sunflower/config/a;->o:Ljava/lang/String;

    const/16 v0, 0x80

    sput v0, Lcom/iflytek/sunflower/config/a;->p:I

    const/16 v0, 0xa

    sput v0, Lcom/iflytek/sunflower/config/a;->q:I

    const-wide/32 v0, 0x2932e00

    sput-wide v0, Lcom/iflytek/sunflower/config/a;->r:J

    const-wide/16 v0, 0x2000

    sput-wide v0, Lcom/iflytek/sunflower/config/a;->s:J

    const-string v0, "http://scs.openspeech.cn/scs"

    sput-object v0, Lcom/iflytek/sunflower/config/a;->t:Ljava/lang/String;

    const-string v0, "http://iws.openspeech.cn/online_param/config_update.php"

    sput-object v0, Lcom/iflytek/sunflower/config/a;->u:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/sunflower/config/a;->v:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/iflytek/sunflower/config/a;->w:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/iflytek/sunflower/config/a;->x:Ljava/lang/String;

    return-void
.end method
