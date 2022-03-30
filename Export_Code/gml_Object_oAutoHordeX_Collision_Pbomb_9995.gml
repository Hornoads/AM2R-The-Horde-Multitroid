if (armor > 0 && disabled == 0 && flashing == 0 && canbehit == 1)
{
    armor -= ((other.damage - 5) - (10 * xtreme))
    flashing = 12
    event_user(0)
}
