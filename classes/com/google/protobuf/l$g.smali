.class public final Lcom/google/protobuf/l$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/l$g$a;
    }
.end annotation


# instance fields
.field private final cW:[Lcom/google/protobuf/l$d;

.field private final cY:[Lcom/google/protobuf/l$f;

.field private dU:Lcom/google/protobuf/f$h;

.field private final dV:[Lcom/google/protobuf/l$a;

.field private final dW:[Lcom/google/protobuf/l$j;

.field private final dX:Lcom/google/protobuf/l$b;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/f$h;[Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$b;)V
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p3, p0, Lcom/google/protobuf/l$g;->dX:Lcom/google/protobuf/l$b;

    .line 336
    iput-object p1, p0, Lcom/google/protobuf/l$g;->dU:Lcom/google/protobuf/f$h;

    .line 337
    invoke-virtual {p2}, [Lcom/google/protobuf/l$g;->clone()Ljava/lang/Object;

    .line 339
    invoke-virtual {p0}, Lcom/google/protobuf/l$g;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p0}, Lcom/google/protobuf/l$b;->a(Ljava/lang/String;Lcom/google/protobuf/l$g;)V

    .line 341
    invoke-virtual {p1}, Lcom/google/protobuf/f$h;->dg()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/l$a;

    iput-object v0, p0, Lcom/google/protobuf/l$g;->dV:[Lcom/google/protobuf/l$a;

    move v4, v6

    .line 342
    :goto_1c
    invoke-virtual {p1}, Lcom/google/protobuf/f$h;->dg()I

    move-result v0

    if-ge v4, v0, :cond_34

    .line 343
    iget-object v7, p0, Lcom/google/protobuf/l$g;->dV:[Lcom/google/protobuf/l$a;

    new-instance v0, Lcom/google/protobuf/l$a;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/f$h;->Q(I)Lcom/google/protobuf/f$a;

    move-result-object v1

    move-object v2, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/l$a;-><init>(Lcom/google/protobuf/f$a;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;ILcom/google/protobuf/l$1;)V

    aput-object v0, v7, v4

    .line 342
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 347
    :cond_34
    invoke-virtual {p1}, Lcom/google/protobuf/f$h;->aF()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/l$d;

    iput-object v0, p0, Lcom/google/protobuf/l$g;->cW:[Lcom/google/protobuf/l$d;

    move v4, v6

    .line 348
    :goto_3d
    invoke-virtual {p1}, Lcom/google/protobuf/f$h;->aF()I

    move-result v0

    if-ge v4, v0, :cond_55

    .line 349
    iget-object v7, p0, Lcom/google/protobuf/l$g;->cW:[Lcom/google/protobuf/l$d;

    new-instance v0, Lcom/google/protobuf/l$d;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/f$h;->G(I)Lcom/google/protobuf/f$b;

    move-result-object v1

    move-object v2, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/l$d;-><init>(Lcom/google/protobuf/f$b;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;ILcom/google/protobuf/l$1;)V

    aput-object v0, v7, v4

    .line 348
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 352
    :cond_55
    invoke-virtual {p1}, Lcom/google/protobuf/f$h;->di()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/l$j;

    iput-object v0, p0, Lcom/google/protobuf/l$g;->dW:[Lcom/google/protobuf/l$j;

    move v0, v6

    .line 353
    :goto_5e
    invoke-virtual {p1}, Lcom/google/protobuf/f$h;->di()I

    move-result v1

    if-ge v0, v1, :cond_74

    .line 354
    iget-object v1, p0, Lcom/google/protobuf/l$g;->dW:[Lcom/google/protobuf/l$j;

    new-instance v2, Lcom/google/protobuf/l$j;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/f$h;->R(I)Lcom/google/protobuf/f$n;

    move-result-object v4

    invoke-direct {v2, v4, p0, v0, v3}, Lcom/google/protobuf/l$j;-><init>(Lcom/google/protobuf/f$n;Lcom/google/protobuf/l$g;ILcom/google/protobuf/l$1;)V

    aput-object v2, v1, v0

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 357
    :cond_74
    invoke-virtual {p1}, Lcom/google/protobuf/f$h;->aB()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/l$f;

    iput-object v0, p0, Lcom/google/protobuf/l$g;->cY:[Lcom/google/protobuf/l$f;

    move v4, v6

    .line 358
    :goto_7d
    invoke-virtual {p1}, Lcom/google/protobuf/f$h;->aB()I

    move-result v0

    if-ge v4, v0, :cond_96

    .line 359
    iget-object v7, p0, Lcom/google/protobuf/l$g;->cY:[Lcom/google/protobuf/l$f;

    new-instance v0, Lcom/google/protobuf/l$f;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/f$h;->E(I)Lcom/google/protobuf/f$f;

    move-result-object v1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/l$f;-><init>(Lcom/google/protobuf/f$f;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;IZLcom/google/protobuf/l$1;)V

    aput-object v0, v7, v4

    .line 358
    add-int/lit8 v4, v4, 0x1

    goto :goto_7d

    .line 362
    :cond_96
    return-void
.end method

.method public static a(Lcom/google/protobuf/f$h;[Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$g;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 220
    new-instance v0, Lcom/google/protobuf/l$b;

    invoke-direct {v0, p1}, Lcom/google/protobuf/l$b;-><init>([Lcom/google/protobuf/l$g;)V

    .line 221
    new-instance v1, Lcom/google/protobuf/l$g;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/protobuf/l$g;-><init>(Lcom/google/protobuf/f$h;[Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$b;)V

    .line 224
    array-length v0, p1

    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->de()I

    move-result v2

    if-eq v0, v2, :cond_1a

    .line 225
    new-instance v0, Lcom/google/protobuf/l$c;

    const-string v2, "Dependencies passed to FileDescriptor.buildFrom() don\'t match those listed in the FileDescriptorProto."

    invoke-direct {v0, v1, v2, v4}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$g;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 229
    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->de()I

    move-result v2

    if-ge v0, v2, :cond_3c

    .line 230
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/google/protobuf/l$g;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$h;->P(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 231
    new-instance v0, Lcom/google/protobuf/l$c;

    const-string v2, "Dependencies passed to FileDescriptor.buildFrom() don\'t match those listed in the FileDescriptorProto."

    invoke-direct {v0, v1, v2, v4}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$g;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 229
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 237
    :cond_3c
    invoke-direct {v1}, Lcom/google/protobuf/l$g;->gh()V

    .line 238
    return-object v1
.end method

.method public static a([Ljava/lang/String;[Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$g$a;)V
    .registers 8

    .prologue
    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    array-length v2, p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_11

    aget-object v3, p0, v0

    .line 263
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 268
    :cond_11
    :try_start_11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_1a} :catch_31

    move-result-object v0

    .line 276
    :try_start_1b
    invoke-static {v0}, Lcom/google/protobuf/f$h;->g([B)Lcom/google/protobuf/f$h;
    :try_end_1e
    .catch Lcom/google/protobuf/s; {:try_start_1b .. :try_end_1e} :catch_3a

    move-result-object v1

    .line 284
    :try_start_1f
    invoke-static {v1, p1}, Lcom/google/protobuf/l$g;->a(Lcom/google/protobuf/f$h;[Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$g;
    :try_end_22
    .catch Lcom/google/protobuf/l$c; {:try_start_1f .. :try_end_22} :catch_43

    move-result-object v1

    .line 290
    invoke-interface {p2, v1}, Lcom/google/protobuf/l$g$a;->b(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/n;

    move-result-object v2

    .line 293
    if-eqz v2, :cond_30

    .line 296
    :try_start_29
    invoke-static {v0, v2}, Lcom/google/protobuf/f$h;->c([BLcom/google/protobuf/o;)Lcom/google/protobuf/f$h;
    :try_end_2c
    .catch Lcom/google/protobuf/s; {:try_start_29 .. :try_end_2c} :catch_63

    move-result-object v0

    .line 303
    invoke-direct {v1, v0}, Lcom/google/protobuf/l$g;->j(Lcom/google/protobuf/f$h;)V

    .line 305
    :cond_30
    return-void

    .line 269
    :catch_31
    move-exception v0

    .line 270
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Standard encoding ISO-8859-1 not supported by JVM."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 277
    :catch_3a
    move-exception v0

    .line 278
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 285
    :catch_43
    move-exception v0

    .line 286
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid embedded descriptor for \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/protobuf/f$h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 297
    :catch_63
    move-exception v0

    .line 298
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/protobuf/l$g;->dX:Lcom/google/protobuf/l$b;

    return-object v0
.end method

.method private gh()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 366
    iget-object v2, p0, Lcom/google/protobuf/l$g;->dV:[Lcom/google/protobuf/l$a;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_f

    aget-object v4, v2, v1

    .line 367
    invoke-static {v4}, Lcom/google/protobuf/l$a;->s(Lcom/google/protobuf/l$a;)V

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 370
    :cond_f
    iget-object v2, p0, Lcom/google/protobuf/l$g;->dW:[Lcom/google/protobuf/l$j;

    array-length v3, v2

    move v1, v0

    :goto_13
    if-ge v1, v3, :cond_1d

    aget-object v4, v2, v1

    .line 371
    invoke-static {v4}, Lcom/google/protobuf/l$j;->a(Lcom/google/protobuf/l$j;)V

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 374
    :cond_1d
    iget-object v1, p0, Lcom/google/protobuf/l$g;->cY:[Lcom/google/protobuf/l$f;

    array-length v2, v1

    :goto_20
    if-ge v0, v2, :cond_2a

    aget-object v3, v1, v0

    .line 375
    invoke-static {v3}, Lcom/google/protobuf/l$f;->c(Lcom/google/protobuf/l$f;)V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 377
    :cond_2a
    return-void
.end method

.method private j(Lcom/google/protobuf/f$h;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 390
    iput-object p1, p0, Lcom/google/protobuf/l$g;->dU:Lcom/google/protobuf/f$h;

    move v0, v1

    .line 392
    :goto_4
    iget-object v2, p0, Lcom/google/protobuf/l$g;->dV:[Lcom/google/protobuf/l$a;

    array-length v2, v2

    if-ge v0, v2, :cond_17

    .line 393
    iget-object v2, p0, Lcom/google/protobuf/l$g;->dV:[Lcom/google/protobuf/l$a;

    aget-object v2, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/f$h;->Q(I)Lcom/google/protobuf/f$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/l$a;->a(Lcom/google/protobuf/l$a;Lcom/google/protobuf/f$a;)V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_17
    move v0, v1

    .line 396
    :goto_18
    iget-object v2, p0, Lcom/google/protobuf/l$g;->cW:[Lcom/google/protobuf/l$d;

    array-length v2, v2

    if-ge v0, v2, :cond_2b

    .line 397
    iget-object v2, p0, Lcom/google/protobuf/l$g;->cW:[Lcom/google/protobuf/l$d;

    aget-object v2, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/f$h;->G(I)Lcom/google/protobuf/f$b;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/l$d;->a(Lcom/google/protobuf/l$d;Lcom/google/protobuf/f$b;)V

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2b
    move v0, v1

    .line 400
    :goto_2c
    iget-object v2, p0, Lcom/google/protobuf/l$g;->dW:[Lcom/google/protobuf/l$j;

    array-length v2, v2

    if-ge v0, v2, :cond_3f

    .line 401
    iget-object v2, p0, Lcom/google/protobuf/l$g;->dW:[Lcom/google/protobuf/l$j;

    aget-object v2, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/f$h;->R(I)Lcom/google/protobuf/f$n;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/l$j;->a(Lcom/google/protobuf/l$j;Lcom/google/protobuf/f$n;)V

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 404
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/google/protobuf/l$g;->cY:[Lcom/google/protobuf/l$f;

    array-length v0, v0

    if-ge v1, v0, :cond_52

    .line 405
    iget-object v0, p0, Lcom/google/protobuf/l$g;->cY:[Lcom/google/protobuf/l$f;

    aget-object v0, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/f$h;->E(I)Lcom/google/protobuf/f$f;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/l$f;->a(Lcom/google/protobuf/l$f;Lcom/google/protobuf/f$f;)V

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 407
    :cond_52
    return-void
.end method


# virtual methods
.method public gB()Lcom/google/protobuf/f$h;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/protobuf/l$g;->dU:Lcom/google/protobuf/f$h;

    return-object v0
.end method

.method public gC()Ljava/util/List;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/protobuf/l$g;->dV:[Lcom/google/protobuf/l$a;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/protobuf/l$g;->dU:Lcom/google/protobuf/f$h;

    invoke-virtual {v0}, Lcom/google/protobuf/f$h;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/protobuf/l$g;->dU:Lcom/google/protobuf/f$h;

    invoke-virtual {v0}, Lcom/google/protobuf/f$h;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
