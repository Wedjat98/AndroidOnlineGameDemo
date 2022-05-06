.class final Lcom/google/protobuf/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private eA:Ljava/lang/Appendable;

.field private eB:Z

.field private final eC:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .registers 3

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/x;->eB:Z

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/x;->eC:Ljava/lang/StringBuilder;

    .line 321
    iput-object p1, p0, Lcom/google/protobuf/x;->eA:Ljava/lang/Appendable;

    .line 322
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lcom/google/protobuf/v;)V
    .registers 3

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/google/protobuf/x;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;I)V
    .registers 5

    .prologue
    .line 365
    if-nez p2, :cond_3

    .line 373
    :goto_2
    return-void

    .line 368
    :cond_3
    iget-boolean v0, p0, Lcom/google/protobuf/x;->eB:Z

    if-eqz v0, :cond_11

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/x;->eB:Z

    .line 370
    iget-object v0, p0, Lcom/google/protobuf/x;->eA:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/protobuf/x;->eC:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 372
    :cond_11
    iget-object v0, p0, Lcom/google/protobuf/x;->eA:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2
.end method


# virtual methods
.method public b(Ljava/lang/CharSequence;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 350
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 353
    :goto_6
    if-ge v1, v2, :cond_23

    .line 354
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_20

    .line 355
    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v3, v0}, Lcom/google/protobuf/x;->a(Ljava/lang/CharSequence;I)V

    .line 356
    add-int/lit8 v0, v1, 0x1

    .line 357
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/protobuf/x;->eB:Z

    .line 353
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 360
    :cond_23
    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    sub-int v0, v2, v0

    invoke-direct {p0, v1, v0}, Lcom/google/protobuf/x;->a(Ljava/lang/CharSequence;I)V

    .line 361
    return-void
.end method

.method public hf()V
    .registers 4

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/protobuf/x;->eC:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 339
    if-nez v0, :cond_10

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Outdent() without matching Indent()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_10
    iget-object v1, p0, Lcom/google/protobuf/x;->eC:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 344
    return-void
.end method

.method public indent()V
    .registers 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/protobuf/x;->eC:Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    return-void
.end method
