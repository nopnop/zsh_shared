# zsh_shared #
**Default zsh configuration based oh-my-zsh**

# Installation #

Clone oh-my-zsh in `/usr/local/lib/oh-my-zsh`

    sudo git clone https://github.com/robbyrussell/oh-my-zsh.git /usr/local/lib/oh-my-zsh

Clone this repository in `/usr/local/lib/zsh_shared`

    sudo git clone https://github.com/nopnop/zsh_shared.git /usr/local/lib/zsh_shared

Then change user's `.zshrc` to source shared zshrc:

    source /usr/local/lib/zsh_shared/zshrc

Do the same for the new user recommended zshrc template (`/etc/zsh/newuser.zshrc.recommended`)


# Manual upgrade #

To upgrade both zsh_shared and oh-my-zsh use the `upgrade-zsh-shared` command or run `sudo /usr/local/lib/zsh_shared/bin/upgrade-zsh-shared`

# Cron task to update (sample)

    # Edit this file to introduce tasks to be run by cron.
    #
    # Each task to run has to be defined through a single line
    # indicating with different fields when the task will be run
    # and what command to run for the task
    #
    # To define the time you can provide concrete values for
    # minute (m), hour (h), day of month (dom), month (mon),
    # and day of week (dow) or use '*' in these fields (for 'any').#
    # Notice that tasks will be started based on the cron's system
    # daemon's notion of time and timezones.
    #
    # Output of the crontab jobs (including errors) is sent through
    # email to the user the crontab file belongs to (unless redirected).
    #
    # For example, you can run a backup of all your user accounts
    # at 5 a.m every week with:
    # 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
    #
    # For more information see the manual pages of crontab(5) and cron(8)
    #
    # m h  dom mon dow   command

    # +- - - - - - - - - - minute [0-59]
    # |   +- - - - - - - - hour [0-23]
    # |   |   +- - - - - - day of month [1-31]
    # |   |   |   +- - - - month [1-12] or [jan-dec]
    # |   |   |   |   +- - day of week  [1-7] or [mon-sun]
    # |   |   |   |   |
    # V   V   V   V   V    Command
      0   0   *   *   *    /usr/local/lib/zsh_shared/bin/upgrade-zsh-shared > /dev/null
