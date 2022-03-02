if (armor > 0 && disabled == 0 && flashing == 0 && canbehit == 1)
{
    armor -= (other.damage - (5 * xtreme))
    flashing = 8
    event_user(0)
}
