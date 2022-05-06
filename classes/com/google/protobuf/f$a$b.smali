.class public final Lcom/google/protobuf/f$a$b;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$a$b$a;
    }
.end annotation


# static fields
.field private static final ak:Lcom/google/protobuf/f$a$b;


# instance fields
.field private ai:I

.field private al:Z

.field private am:I

.field private an:Z

.field private ao:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1517
    new-instance v0, Lcom/google/protobuf/f$a$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$a$b;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$a$b;->ak:Lcom/google/protobuf/f$a$b;

    .line 1518
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 1519
    sget-object v0, Lcom/google/protobuf/f$a$b;->ak:Lcom/google/protobuf/f$a$b;

    .line 1520
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1205
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 1232
    iput v0, p0, Lcom/google/protobuf/f$a$b;->am:I

    .line 1239
    iput v0, p0, Lcom/google/protobuf/f$a$b;->ao:I

    .line 1261
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$a$b;->ai:I

    .line 1206
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 1202
    invoke-direct {p0}, Lcom/google/protobuf/f$a$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1208
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 1232
    iput v0, p0, Lcom/google/protobuf/f$a$b;->am:I

    .line 1239
    iput v0, p0, Lcom/google/protobuf/f$a$b;->ao:I

    .line 1261
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$a$b;->ai:I

    .line 1208
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/f$a$b;I)I
    .registers 2

    .prologue
    .line 1202
    iput p1, p0, Lcom/google/protobuf/f$a$b;->am:I

    return p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$a$b;Z)Z
    .registers 2

    .prologue
    .line 1202
    iput-boolean p1, p0, Lcom/google/protobuf/f$a$b;->al:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 1221
    invoke-static {}, Lcom/google/protobuf/f;->R()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$a$b;I)I
    .registers 2

    .prologue
    .line 1202
    iput p1, p0, Lcom/google/protobuf/f$a$b;->ao:I

    return p1
.end method

.method public static b(Lcom/google/protobuf/f$a$b;)Lcom/google/protobuf/f$a$b$a;
    .registers 2

    .prologue
    .line 1350
    invoke-static {}, Lcom/google/protobuf/f$a$b;->bf()Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$a$b$a;->c(Lcom/google/protobuf/f$a$b;)Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$a$b;Z)Z
    .registers 2

    .prologue
    .line 1202
    iput-boolean p1, p0, Lcom/google/protobuf/f$a$b;->an:Z

    return p1
.end method

.method public static bb()Lcom/google/protobuf/f$a$b;
    .registers 1

    .prologue
    .line 1212
    sget-object v0, Lcom/google/protobuf/f$a$b;->ak:Lcom/google/protobuf/f$a$b;

    return-object v0
.end method

.method public static bf()Lcom/google/protobuf/f$a$b$a;
    .registers 1

    .prologue
    .line 1347
    invoke-static {}, Lcom/google/protobuf/f$a$b$a;->bn()Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 1263
    iget v0, p0, Lcom/google/protobuf/f$a$b;->ai:I

    .line 1264
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1277
    :goto_5
    return v0

    .line 1266
    :cond_6
    const/4 v0, 0x0

    .line 1267
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b;->bd()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1268
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b;->getStart()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1271
    :cond_18
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b;->be()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1272
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b;->getEnd()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1275
    :cond_28
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 1276
    iput v0, p0, Lcom/google/protobuf/f$a$b;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b;->a()I

    .line 1252
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b;->bd()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1253
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b;->getStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 1255
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b;->be()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1256
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b;->getEnd()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 1258
    :cond_1f
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 1259
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b;->bg()Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b;->bc()Lcom/google/protobuf/f$a$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b;->bh()Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 1226
    invoke-static {}, Lcom/google/protobuf/f;->S()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public bc()Lcom/google/protobuf/f$a$b;
    .registers 2

    .prologue
    .line 1216
    sget-object v0, Lcom/google/protobuf/f$a$b;->ak:Lcom/google/protobuf/f$a$b;

    return-object v0
.end method

.method public bd()Z
    .registers 2

    .prologue
    .line 1233
    iget-boolean v0, p0, Lcom/google/protobuf/f$a$b;->al:Z

    return v0
.end method

.method public be()Z
    .registers 2

    .prologue
    .line 1240
    iget-boolean v0, p0, Lcom/google/protobuf/f$a$b;->an:Z

    return v0
.end method

.method public bg()Lcom/google/protobuf/f$a$b$a;
    .registers 2

    .prologue
    .line 1348
    invoke-static {}, Lcom/google/protobuf/f$a$b;->bf()Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public bh()Lcom/google/protobuf/f$a$b$a;
    .registers 2

    .prologue
    .line 1352
    invoke-static {p0}, Lcom/google/protobuf/f$a$b;->b(Lcom/google/protobuf/f$a$b;)Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()I
    .registers 2

    .prologue
    .line 1241
    iget v0, p0, Lcom/google/protobuf/f$a$b;->ao:I

    return v0
.end method

.method public getStart()I
    .registers 2

    .prologue
    .line 1234
    iget v0, p0, Lcom/google/protobuf/f$a$b;->am:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1246
    const/4 v0, 0x1

    return v0
.end method
