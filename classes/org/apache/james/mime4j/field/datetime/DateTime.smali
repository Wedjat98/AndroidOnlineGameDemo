.class public Lorg/apache/james/mime4j/field/datetime/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"


# instance fields
.field private final date:Ljava/util/Date;

.field private final day:I

.field private final hour:I

.field private final minute:I

.field private final month:I

.field private final second:I

.field private final timeZone:I

.field private final year:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 15
    .param p1, "yearString"    # Ljava/lang/String;
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "timeZone"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/datetime/DateTime;->convertToYear(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->year:I

    .line 39
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->year:I

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/datetime/DateTime;->convertToDate(IIIIIII)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    .line 40
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->month:I

    .line 41
    iput p3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->day:I

    .line 42
    iput p4, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->hour:I

    .line 43
    iput p5, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->minute:I

    .line 44
    iput p6, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->second:I

    .line 45
    iput p7, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->timeZone:I

    .line 46
    return-void
.end method

.method public static convertToDate(IIIIIII)Ljava/util/Date;
    .registers 15
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "timeZone"    # I

    .prologue
    .line 65
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 66
    .local v0, "c":Ljava/util/Calendar;
    add-int/lit8 v2, p1, -0x1

    move v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 67
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 69
    const/high16 v1, -0x80000000

    if-eq p6, v1, :cond_2e

    .line 70
    div-int/lit8 v1, p6, 0x64

    mul-int/lit8 v1, v1, 0x3c

    rem-int/lit8 v2, p6, 0x64

    add-int v7, v1, v2

    .line 71
    .local v7, "minutes":I
    const/16 v1, 0xc

    mul-int/lit8 v2, v7, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 74
    .end local v7    # "minutes":I
    :cond_2e
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private convertToYear(Ljava/lang/String;)I
    .registers 4
    .param p1, "yearString"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, "year":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    .line 60
    .end local v0    # "year":I
    :goto_b
    return v0

    .line 53
    .restart local v0    # "year":I
    :pswitch_c
    if-ltz v0, :cond_15

    const/16 v1, 0x32

    if-ge v0, v1, :cond_15

    .line 54
    add-int/lit16 v0, v0, 0x7d0

    goto :goto_b

    .line 56
    :cond_15
    add-int/lit16 v0, v0, 0x76c

    goto :goto_b

    .line 58
    :pswitch_18
    add-int/lit16 v0, v0, 0x76c

    goto :goto_b

    .line 50
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    if-ne p0, p1, :cond_5

    .line 161
    :cond_4
    :goto_4
    return v1

    .line 137
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 138
    goto :goto_4

    .line 139
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 140
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 141
    check-cast v0, Lorg/apache/james/mime4j/field/datetime/DateTime;

    .line 142
    .local v0, "other":Lorg/apache/james/mime4j/field/datetime/DateTime;
    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    if-nez v3, :cond_22

    .line 143
    iget-object v3, v0, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    if-eqz v3, :cond_2e

    move v1, v2

    .line 144
    goto :goto_4

    .line 145
    :cond_22
    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    iget-object v4, v0, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    move v1, v2

    .line 146
    goto :goto_4

    .line 147
    :cond_2e
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->day:I

    iget v4, v0, Lorg/apache/james/mime4j/field/datetime/DateTime;->day:I

    if-eq v3, v4, :cond_36

    move v1, v2

    .line 148
    goto :goto_4

    .line 149
    :cond_36
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->hour:I

    iget v4, v0, Lorg/apache/james/mime4j/field/datetime/DateTime;->hour:I

    if-eq v3, v4, :cond_3e

    move v1, v2

    .line 150
    goto :goto_4

    .line 151
    :cond_3e
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->minute:I

    iget v4, v0, Lorg/apache/james/mime4j/field/datetime/DateTime;->minute:I

    if-eq v3, v4, :cond_46

    move v1, v2

    .line 152
    goto :goto_4

    .line 153
    :cond_46
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->month:I

    iget v4, v0, Lorg/apache/james/mime4j/field/datetime/DateTime;->month:I

    if-eq v3, v4, :cond_4e

    move v1, v2

    .line 154
    goto :goto_4

    .line 155
    :cond_4e
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->second:I

    iget v4, v0, Lorg/apache/james/mime4j/field/datetime/DateTime;->second:I

    if-eq v3, v4, :cond_56

    move v1, v2

    .line 156
    goto :goto_4

    .line 157
    :cond_56
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->timeZone:I

    iget v4, v0, Lorg/apache/james/mime4j/field/datetime/DateTime;->timeZone:I

    if-eq v3, v4, :cond_5e

    move v1, v2

    .line 158
    goto :goto_4

    .line 159
    :cond_5e
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->year:I

    iget v4, v0, Lorg/apache/james/mime4j/field/datetime/DateTime;->year:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 160
    goto :goto_4
.end method

.method public getDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDay()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->day:I

    return v0
.end method

.method public getHour()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->hour:I

    return v0
.end method

.method public getMinute()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->minute:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->month:I

    return v0
.end method

.method public getSecond()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->second:I

    return v0
.end method

.method public getTimeZone()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->timeZone:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->year:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 120
    const/16 v0, 0x1f

    .line 121
    .local v0, "PRIME":I
    const/4 v1, 0x1

    .line 122
    .local v1, "result":I
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    if-nez v2, :cond_35

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v1, v2, 0x1f

    .line 123
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->day:I

    add-int v1, v2, v3

    .line 124
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->hour:I

    add-int v1, v2, v3

    .line 125
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->minute:I

    add-int v1, v2, v3

    .line 126
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->month:I

    add-int v1, v2, v3

    .line 127
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->second:I

    add-int v1, v2, v3

    .line 128
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->timeZone:I

    add-int v1, v2, v3

    .line 129
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->year:I

    add-int v1, v2, v3

    .line 130
    return v1

    .line 122
    :cond_35
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_8
.end method

.method public print()V
    .registers 3

    .prologue
    .line 110
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getHour()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getTimeZone()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
