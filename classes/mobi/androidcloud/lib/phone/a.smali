.class public final Lmobi/androidcloud/lib/phone/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static volatile iL:Z


# instance fields
.field public iM:Ljava/lang/String;

.field public iN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lmobi/androidcloud/lib/phone/a;->iL:Z

    .line 584
    const-string v0, "[^0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    .line 41
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid countryCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_21
    iput-object p1, p0, Lmobi/androidcloud/lib/phone/a;->iM:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lmobi/androidcloud/lib/phone/a;->iN:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 13
    invoke-virtual {p0}, Lmobi/androidcloud/lib/phone/a;->jz()Lmobi/androidcloud/lib/phone/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 13
    check-cast p1, Lmobi/androidcloud/lib/phone/a;

    invoke-virtual {p0, p1}, Lmobi/androidcloud/lib/phone/a;->e(Lmobi/androidcloud/lib/phone/a;)I

    move-result v0

    return v0
.end method

.method public e(Lmobi/androidcloud/lib/phone/a;)I
    .registers 4

    .prologue
    .line 735
    iget-object v0, p0, Lmobi/androidcloud/lib/phone/a;->iM:Ljava/lang/String;

    iget-object v1, p1, Lmobi/androidcloud/lib/phone/a;->iM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 736
    if-nez v0, :cond_12

    .line 737
    iget-object v0, p0, Lmobi/androidcloud/lib/phone/a;->iN:Ljava/lang/String;

    iget-object v1, p1, Lmobi/androidcloud/lib/phone/a;->iN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 739
    :cond_12
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 94
    instance-of v1, p1, Lmobi/androidcloud/lib/phone/a;

    if-eqz v1, :cond_1c

    .line 95
    check-cast p1, Lmobi/androidcloud/lib/phone/a;

    .line 96
    iget-object v1, p0, Lmobi/androidcloud/lib/phone/a;->iM:Ljava/lang/String;

    iget-object v2, p1, Lmobi/androidcloud/lib/phone/a;->iM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lmobi/androidcloud/lib/phone/a;->iN:Ljava/lang/String;

    iget-object v2, p1, Lmobi/androidcloud/lib/phone/a;->iN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    .line 100
    :cond_1c
    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lmobi/androidcloud/lib/phone/a;->iM:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lmobi/androidcloud/lib/phone/a;->iN:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public jz()Lmobi/androidcloud/lib/phone/a;
    .registers 4

    .prologue
    .line 730
    new-instance v0, Lmobi/androidcloud/lib/phone/a;

    iget-object v1, p0, Lmobi/androidcloud/lib/phone/a;->iM:Ljava/lang/String;

    iget-object v2, p0, Lmobi/androidcloud/lib/phone/a;->iN:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lmobi/androidcloud/lib/phone/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/androidcloud/lib/phone/a;->iM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobi/androidcloud/lib/phone/a;->iN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
